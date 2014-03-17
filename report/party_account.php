<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$monthId = getParam('monthId');
$ledgerId = getParam('ledgerId');
$fromDate = getParam('fromDate');
$toDate = getParam('toDate');

if ($monthId) {
    $fromDate = $fromDate == '' ? firstDayByMonth($monthId) : $fromDate;
    $toDate = $toDate == '' ? lasDayByMonth($monthId) : $toDate;
} else {

    $fromDate = $fromDate == '' ? firstDayMonth() : $fromDate;
    $toDate = $toDate == '' ? lasDayMonth() : $toDate;
}


$ledgerList = getAllLedger($companyId);
$ledgerAccount = partyAccount($ledgerId, $fromDate, $toDate);
$ledgerOP = partyOpeningBalance($ledgerId, $fromDate);
?>


<style type="text/css">
    .company{width: 95%;}
</style>

<!--<script type="text/javascript">
    $(document).ready(function() {
        $('company required ui-autocomplete-input').focus();
        $('#ledgerIdID').change(function() {
            var ledgerId = $('#ledgerIdID').val();
            location.href = '?ledgerId=' + ledgerId;
        });
    });
</script>-->

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Transaction Details</a>
            </h3>
        </div>
        <div class="box-content">
            <form class="" action="" method="GET">
                <table class="">
                    <tr>
                        <td>Party Account :</td>
                        <td><?php comboBox('ledgerId', $ledgerList, "$ledgerId", TRUE, 'chosen-select'); ?></td>
                    </tr>
                    <tr>
                        <td>From :</td>
                        <td>
                            <input type="text" name="fromDate" class="datepicker" value="<?php echo $fromDate; ?>" /> 
                            To: <input type="text" name="toDate" class="datepicker" value="<?php echo $toDate; ?>" />
                        </td>
                    </tr>
                </table>
                <button onclick="goBack();" class="btn btn-primary">
                    <i class="icon-white icon-arrow-left"></i> Back
                </button>
                <button type="submit" class="btn btn-primary">
                    <i class="icon-white icon-search"></i> Search
                </button>
            </form>

            <table class="table table-striped table-bordered bootstrap-datatable">
                <thead>
                    <tr>
                        <th width="30">S/N</th>
                        <th width="80">Date</th>
                        <th>Particular</th>
                        <th width="100">Tran Type</th>
                        <th width="60">Tran No</th>
                        <th width="100">Debit</th>
                        <th width="100">Credit</th>
                        <th width="100">Balance</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td colspan="4">Opening Balance</td>
                        <td align='right'><?php echo $ledgerOP->DebitAmount; ?></td>
                        <td align='right'><?php echo $ledgerOP->CreditAmount; ?></td>
                        <td align='right'><?php echo formatMoney($ledgerOP->DebitAmount - $ledgerOP->CreditAmount); ?></td>
                    </tr>
                    <?php
                    $sl = 2;
                    while ($row = $ledgerAccount->fetch_object()) {
                        $balance += $sl == 2 ? $row->DebitAmount - $row->CreditAmount + $ledgerOP->DebitAmount - $ledgerOP->CreditAmount : $row->DebitAmount - $row->CreditAmount;
                        echo "<tr>";
                        echo "<td>$sl</td>";
                        echo "<td><a href='$row->link?mode=view&searchId=$row->TransactionId'><span style='font-weight:bold;'>$row->TranDate</span></a></td>";
                        echo "<td>$row->Name</td>";
                        echo "<td>$row->voucherType</td>";
                        echo "<td>$row->TransactionId</td>";
                        echo "<td align='right'>$row->DebitAmount</td>";
                        echo "<td align='right'>$row->CreditAmount</td>";
                        echo "<td align='right'>" . formatMoney($balance) . "</td>";
                        echo "</tr>";
                        $sl++;
                    }
                    ?>        
                </tbody>
            </table>

        </div><!--/span-->
    </div>	
</div>

<?php include '../body/footer.php'; ?>




