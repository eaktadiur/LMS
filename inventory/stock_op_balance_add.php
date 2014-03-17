<?php
include_once '../lib/DbManager.php';
include '../body/header.php';

if (isSave()) {
    $product = getParam('product');

    foreach ($product as $key => $TransactionID) {

        if ($TransactionID == 0) {

            $transaction = "INSERT INTO `transaction`(Ref,  CreatedBy, CreatedOn, CompanyId) VALUES('Opening', '$EmployeeId', NOW(), '$CompanyId')";
            sql($transaction);
            $transactionId = mysql_insert_id();

            $transactionDetails = "INSERT INTO inventorydetail(TransactionId, ProductId, Qty, Rate, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$key', '', '',  '$EmployeeId', NOW(), '$CompanyId')";
            sql($transactionDetails);

            $sql_update = "Update `stockitem` set TransactionID='$transactionId' WHERE StockItemID ='$key'";
            $result = sql($sql_update);
        }
        echo "<script type='text/javascript'>window.opener.parent.location.reload();</script>";
        echo "<script type='text/javascript'>window.close();</script>";
    }
}



$sql = "SELECT l.`Name`, IsActive, l.StockItemID, td.ProductId, l.TransactionID
    FROM stockitem l 
    LEFT JOIN inventorydetail td ON td.ProductId=l.StockItemID
    WHERE l.CompanyID='$CompanyId'
    GROUP BY l.StockItemID ORDER BY l.`Name`";
$result = query($sql);
?>


<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Ledger Opening Balance</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a class="btn btn-primary" href="unit_entry.php">
                    <i class="icon-white icon-plus-sign"></i> Add New
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>
                <form action="" method="POST">
                    <input type="submit" name="save" value="Add" class="btn btn-primary"/>

                    <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                        <thead>
                        <th width="30">S/N</th>
                        <th>Ledger Name</th>
                        <th width="50">chk</th>
                        </thead>
                        <?php while ($row = $result->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td class="center"><input type="checkbox" name="product[<?php echo $row->StockItemID; ?>]" value="<?php echo $row->TransactionID; ?>"/></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table> 
                    <input type="submit" name="save" value="Add" class="btn btn-primary"/>

                </form>
                <a class="btn btn-primary" href="unit_entry.php">
                    <i class="icon-white icon-plus-sign"></i> Add New
                </a>
                <?php PagingBoostrap("?", $totalRow, $perpage); ?>
            </div>


        </div>
    </div><!--/span-->

</div>	
<?php
include '../body/footer.php';
?>