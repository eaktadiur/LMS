<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';


$report = new report();
?>
<div style="height: 500px;">
    <table class="table" width="100%">
        <tr>
            <td><h1>Balance Sheet</h1></td>
            <td width="250"></td>
            <td align="right"></td>
        </tr>
    </table>
    <div style="width: 500px; float: left;">
        <table class="easyui-datagrid">
            <thead>
                <tr>
                    <th field="3" width="395">Liabilities</th>
                    <th field="4" width="100" align="right">Amount</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $balance_sheet = $report->Balance_Sheet($CompanyId);
                while ($row = mysql_fetch_object($balance_sheet)) {
                    if ($row->amount > 0) {
                        echo "<tr>";
                        echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$row->group_name</a></td>";
                        echo "<td>$row->amount</td>";
                        echo "</tr>";
                    }
                }
                ?>        
            </tbody>

        </table>
    </div>
    <div style="width: 500px; float: left;">
        <table class="easyui-datagrid">
            <thead>
                <tr>
                    <th field="1" width="395">Assets</th>
                    <th field="2" width="100" align="right">Amount</th>


                </tr>
            </thead>
            <tbody>
                <?php
                $balance_sheet = $report->Balance_Sheet($CompanyId);
                while ($row = mysql_fetch_object($balance_sheet)) {
                    if ($row->amount < 0) {
                        echo "<tr>";
                        echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$row->group_name</a></td>";
                        echo "<td>$row->amount</td>";
                        echo "</tr>";
                    }
                }
                ?>        
            </tbody>

        </table>

    </div>


</div>


<?php include '../body/footer.php'; ?>




