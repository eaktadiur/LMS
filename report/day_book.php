<?php
include '../lib/DbManager.php';

include './report.php';



$fromDate = getParam('fromDate');
$fromDate = $fromDate == '' ? firstDayMonth() : $fromDate;
$toDate = getParam('toDate');
$toDate = $toDate == '' ? today() : $toDate;

$result = dayBook($fromDate, $toDate, $companyId);
include '../body/header.php';
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Day Book</a>
            </h3>
        </div>
        <div class="box-content">
            <form action="" method="GET">
                <table class="table">
                    <tr>
                        <td></td>
                        <td>
                            From :<input type="text" name="fromDate" class="datepicker" value="<?php echo $fromDate; ?>" data-options="formatter:myformatter,parser:myparser"/> 
                            To: <input type="text" name="toDate" class="datepicker" value="<?php echo $toDate; ?>" data-options="formatter:myformatter,parser:myparser"/>
                            <button type="submit" class="btn btn-primary" >View</button>
                        </td>
                    </tr>
                </table>
            </form>
            <br>

            <table class="table table-striped table-bordered bootstrap-datatable">
                <thead>
                <th width="30">S/N</th>
                <th width="80">Date <i class="icon-filter"/></th>
                <th>Ledger <i class="icon-filter"/></th>
                <th width="100">Tran No <i class="icon-filter"/></th>
                <th width="100">Tran Type <i class="icon-filter"/></th>
                <th width="100">Debit</th>
                <th width="100">Credit</th>
                <th width="80">Action</th>
                </thead>
                <tbody>
                    <?php
                    while ($row = $result->fetch_object()) {
                        $DrTotal+=$row->DebitAmount;
                        $CrTotal+=$row->CreditAmount;
                        ?>
                        <tr>
                            <td><?php echo ++$sl; ?></td>
                            <td><?php echo $row->TranDate; ?> </td>
                            <td><?php echo $row->Name; ?></td>
                            <td align="center"><?php echo $row->TransactionId; ?></td>
                            <td><?php echo $row->voucherType; ?></td>
                            <td align="right"><?php echo $row->DebitAmount; ?></td>
                            <td align="right"><?php echo $row->CreditAmount; ?></td>
                            <td>
                                <?php viewIcon("account_voucher_view.php?searchId=$row->TransactionId"); ?>
                                <?php editIcon("#"); ?>
                                <?php deleteIcon('#'); ?>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
                <tfoot>
                <th></th>
                <th colspan="4" align="right">Grand Total</th>
                <th align="right"><?php echo formatMoney($DrTotal); ?></th>
                <th align="right"><?php echo formatMoney($CrTotal); ?></th>
                <th></th>
                </tfoot>
            </table>
        </div><!--/span-->
    </div>	
</div>

<?php
include '../body/footer.php';
?>