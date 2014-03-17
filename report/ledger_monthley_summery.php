<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$ledgerId = getParam('ledgerId');

$report = new report();
$ledgerSummery = $report->ledgerSummery($ledgerId);
$monthList = $report->getMonth();
?>
<table class="table" width="100%">
    <tr>
        <td><h1>Ledger Summery</h1></td>
        <td width="250"></td>
        <td align="right"><a href="javascript:history.back(1)" class="button">Back</a></td>
    </tr>
</table>

<table class="easyui-datagrid" title="Particular">
    <thead>
        <tr>
            <th field="2" width="540">Month Name</th>
            <th field="3" width="150" align="right">Debit</th>
            <th field="4" width="150" align="right">Credit</th>
            <th field="5" width="150" align="right">Balance</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = mysql_fetch_object($monthList)) {
            echo "<tr>";
            echo "<td><a href='party_account.php?ledgerId=$row->LedgerId'>$row->Name</a></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "<td></td>";
            echo "</tr>";
        }
        ?>        
    </tbody>

</table>


<?php include '../body/footer.php'; ?>




