<?php
include_once '../lib/DbManager.php';

if (isSave()) {

    $debit = getParam('debit');
    $credit = getParam('credit');

    foreach ($debit as $TransactionId => $value) {
        $sql = "UPDATE transactiondetail SET 
        DebitAmount='$debit[$TransactionId]', 
        CreditAmount='$credit[$TransactionId]'
        WHERE TransactionId='$TransactionId'";

        query($sql);
    }
}

include '../body/header.php';

$sql = "SELECT l.`Name`, td.DebitAmount, td.CreditAmount, td.TransactionId
FROM `transaction` t
INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
INNER JOIN ledger l ON l.LedgerId=td.LedgerId
WHERE Ref='Opening' AND t.CompanyId='$companyId'";

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

            <div class="table-responsive">
                <a class="btn btn-primary" href="ledger_op_balance_add.php" target="_blank">
                    <i class="icon-white icon-plus-sign"></i> 
                    Add Ledger
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>


                <form method="POST" action="">
                    <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                        <thead>
                        <th width="30">S/N</th>
                        <th>Ledger Name</th>
                        <th width="150">Debit</th>
                        <th width="150">Credit</th>
                        </thead>
                        <?php while ($row = $result->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td class="right"><input type="text" name="debit[<?php echo $row->TransactionId; ?>]" value="<?php echo $row->DebitAmount; ?>"/></td>
                                <td class="right"><input type="text" name="credit[<?php echo $row->TransactionId; ?>]" value="<?php echo $row->CreditAmount; ?>"/></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                    <button type="submit" name="save" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div><!--/span-->

</div>
<?php
include '../body/footer.php';
?>