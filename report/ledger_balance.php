<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';



$LedgerResult = ledgerBalance($companyId);
//$openingBalanceResult = $report->openingBalanceTrandactionDetails($ledgerId, $CompanyId, $fromDate);
//print_r($openingBalanceResult);
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Ledger Balance</a>
            </h3>
        </div>
        <div class="box-content">
            <div class="center"><h2>Current Balance</h2></div>

            <button onclick="goBack();" class="btn btn-primary">
                <i class="icon-white icon-arrow-left"></i> Back
            </button>
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                <th width="30">S/N</th>
                <th>Particular</th>
                <th width="100">Debit</th>
                <th width="100">Credit</th>
                </thead>

                <?php
                while ($row = $LedgerResult->fetch_object()) {
                    $Dr = $row->Balance > 0 ? abs($row->Balance) : '';
                    $Cr = $row->Balance < 0 ? abs($row->Balance) : '';
                    ?>
                    <tr>
                        <td><?php echo ++$sl; ?></td>
                        <td><a href="transaction_details.php?ledgerId=<?php echo $row->LedgerID; ?>"><?php echo $row->Name; ?></a></td>
                        <td align="right"><?php echo $Dr; ?></td>
                        <td align="right"><?php echo $Cr; ?></td>
                    </tr>
                    <?php
                }
                ?>
            </table> 
        </div><!--/span-->
    </div>	
</div>

<?php include '../body/footer.php'; ?>