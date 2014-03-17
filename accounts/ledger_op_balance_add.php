<?php
include_once '../lib/DbManager.php';
include '../body/header.php';



if (isSave()) {
    $ledger = getParam('ledger');

    foreach ($ledger as $key => $TransactionID) {
        //echo $TransactionID . ' ' . $key . '<br/>';

        if ($TransactionID == 0) {

            $transaction = "INSERT INTO `transaction`(Ref,  CreatedBy, CreatedOn, CompanyId) VALUES('Opening', '$employeeId', NOW(), '$companyId')";
            query($transaction);
            $transactionId = insertLastId();

            $transactionDetails = "INSERT INTO transactiondetail(TransactionId, LedgerId) 
            VALUES('$transactionId', '$key')";
            query($transactionDetails);

            $sql_update = "Update `ledger` set TransactionId='$TransactionID' WHERE ledgerId ='$key'";
            $result = query($sql_update);
        }
        echo "<script type='text/javascript'>window.opener.parent.location.reload();</script>";
        echo "<script type='text/javascript'>window.close();</script>";
    }
}



$sql = "SELECT l.`Name`, IsActive, l.LedgerId, td.DebitAmount, td.CreditAmount, 
    td.LedgerId, l.TransactionId
    FROM ledger l 
    LEFT JOIN transactiondetail td ON td.LedgerId=l.LedgerId
    WHERE l.CompanyId='$companyId'
    GROUP BY l.LedgerId ORDER BY l.`Name`";
$result = query($sql);
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse List</a>
            </h3>
        </div>
        <div class="box-content">


            <form action="" method="POST">
                <button type="submit" name="save"class="btn btn-primary">Add</button>
                <h2>Ledger Opening Balance </h2>
                <div class="table-responsive">
                    <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                        <thead>
                        <th width="30">S/N</th>
                        <th>Ledger Name</th>
                        <th width="50">chk</th>
                        </thead>
                        <?php while ($row = $result->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td class="center"><input type="checkbox" name="ledger[<?php echo $row->LedgerId; ?>]" value="<?php echo $row->TransactionId; ?>"/></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table> 
                    <input type="submit" name="save" value="Add"/>

                </div>
            </form>
        </div>
    </div><!--/span-->

</div>
<?php
include '../body/footer.php';
?>