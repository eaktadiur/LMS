<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$group_id = getParam('groupid');

$accountSummery = Group_Account_summery($group_id, $companyId);
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Group Summery</a>
            </h3>
        </div>
        <div class="box-content">
            <h2>Group Summery</h2>
            <button type="button" class="btn btn-primary" onclick="goBack();">
                <i class="icon-white icon-arrow-left"></i> 
                Go Back
            </button>
            <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable" title="Group Summery">
                <thead>
                    <tr>
                        <th>S/N</th>
                        <th>Particular</th>
                        <th align="center">Type</th>
                        <th align="right">Debit</th>
                        <th align="right">Credit</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sl = 1;
                    while ($row = $accountSummery->fetch_object()) {
                        $Debitr = $row->Debit == 0 ? '' : formatMoney($row->Debit);
                        $Credit = $row->Credit == 0 ? '' : formatMoney($row->Credit);
                        $balance = $Debitr - $Credit;

                        $Debitr = $balance > 0 ? formatMoney(abs($balance)) : '';
                        $Credit = $balance < 0 ? formatMoney(abs($balance)) : '';

                        $link = $row->GrpupLedger != 'Ledger' ? "group_account_summery.php?groupid=$row->GroupID" : "ledger_summery.php?ledgerId=$row->GroupID";
                        //if ($balance != 0) {
                        echo "<tr>";
                        echo "<td width='30'>$sl</td>";
                        echo "<td><a href='$link'>$row->Name</a></td>";
                        echo "<td width='100'>$row->GrpupLedger</td>";
                        echo "<td width='80' align='ritht'>$Debitr</td>";
                        echo "<td width='80' align='ritht'>$Credit</td>";
                        echo "</tr>";
                        $sl++;
                        //}
                    }
                    ?>        
                </tbody>

            </table>

        </div>
    </div><!--/span-->

</div>	


<?php include '../body/footer.php'; ?>