<?php
include_once '../lib/DbManager.php';

if (isSave()) {

    $qty = getParam('qty');
    $rate = getParam('rate');

    foreach ($qty as $TransactionId => $value) {
        $total = $qty[$TransactionId] * $rate[$TransactionId];
        $sql = "UPDATE inventorydetail SET 
        Qty='$qty[$TransactionId]', 
        Rate='$rate[$TransactionId]', 
        OutTotal='$total',
        InTotal='$total'
        ModifiedBy='$EmployeeId', 
        ModifiedOn=NOW()
        WHERE TransactionId='$TransactionId'";

        sql($sql);
    }
}



$sql = "SELECT s.`Name`, ivd.Qty, ivd.Rate, ivd.TransactionId
FROM `transaction` t
INNER JOIN inventorydetail ivd ON ivd.TransactionId=t.TransactionId
INNER JOIN stockitem s ON s.StockItemID=ivd.ProductId
WHERE Ref='Opening' AND t.CompanyId='$CompanyId'";

$result = getOPStockList($companyId);
include '../body/header.php';
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Unit List</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a class="btn btn-primary" href="stock_op_balance_add.php" target="_blank">
                    <i class="icon-white icon-plus-sign"></i> Add Product
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>


                <form method="POST" action="">
                    <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                        <thead>
                        <th width="30">S/N</th>
                        <th>Product Name</th>
                        <th width="150">Qty</th>
                        <th width="150">Rate</th>
                        <th width="150">Total</th>
                        </thead>
                        <?php while ($row = $result->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td class="right"><input type="text" name="qty[<?php echo $row->TransactionId; ?>]" value="<?php echo $row->Qty; ?>"/></td>
                                <td class="right"><input type="text" name="rate[<?php echo $row->TransactionId; ?>]" value="<?php echo $row->Rate; ?>"/></td>
                                <td class="right"><?php echo formatMoney($row->Qty * $row->Rate); ?></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                    <input type="submit" name="save" value="Update" class="btn btn-primary"/>
                </form>
               <a class="btn btn-primary" href="stock_op_balance_add.php" target="_blank">
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