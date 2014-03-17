<?php
include '../lib/DbManager.php';

$fromDate = getParam('fromDate');
$fromDate = $fromDate == '' ? firstDayMonth() : $fromDate;

$toDate = getParam('toDate');
$toDate = $toDate == '' ? today() : $toDate;

include '../body/header.php';
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Collection Voucher: <?php echo $maxId; ?></a>
            </h3>
        </div>
        <div class="box-content">
            <form action="" method="GET">
                <h2>Trial Balance</h2>
                <table class="table">
                    <tr>
                        <td align="right">
                            From :<input type="text" name="fromDate" class="datepicker" value="<?php echo $fromDate; ?>" /> 
                            To: <input type="text" name="toDate" class="datepicker" value="<?php echo $toDate; ?>" />
                            <button type="submit" class="btn btn-primary">Search</button>
                        </td>
                    </tr>
                </table>
            </form>

            <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                    <tr>
                        <th>Group Summery</th>
                        <th align="right">Debit</th>
                        <th align="right">Credit</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sqlLibili = "SELECT GroupID, `Name`, gn.GroupNatureName, g.GroupNatureID,
                    GetFamilyTreeGroup(GroupID)AS groupList
                    FROM `group` g
                    INNER JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
                    WHERE CompanyID='$companyId' AND UnderGroupID=0 AND g.GroupNatureID IN (1,2,3,4)
                    ORDER BY g.`Name`";
                    $resultLib = query($sqlLibili);
                    while ($row = $resultLib->fetch_object()) {
                        $groupList = $row->groupList == '' ? 0 : $row->groupList;

                        //$res = ($row->GroupNatureID == 3 || $row->GroupNatureID == 4) ? " AND l.GroupID='$row->GroupID'" : " AND l.GroupID IN ($groupList)";

                        $a = "SELECT l.LedgerID, l.`Name`, 
                    (CASE WHEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0)))>0 THEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) ELSE '' END) AS DebitAmount,
                    (CASE WHEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0)))<0 THEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) ELSE '' END) AS CreditAmount
                    FROM transactiondetail td
                    INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                    INNER JOIN `group` g ON g.GroupID=l.GroupID
                    WHERE l.CompanyID='$companyId' AND l.GroupID IN ($groupList) <br/>";

                        $total = find("SELECT l.LedgerID, l.`Name`, 
                    (CASE WHEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0)))>0 THEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) ELSE '' END) AS DebitAmount,
                    (CASE WHEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0)))<0 THEN (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) ELSE '' END) AS CreditAmount
                    FROM transactiondetail td
                    INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                    INNER JOIN `group` g ON g.GroupID=l.GroupID
                    WHERE l.CompanyID='$companyId' AND l.GroupID IN ($groupList)");
                        $Dr += $total->DebitAmount;
                        $Cr += $total->CreditAmount;
                        $OpDr = $Dr + $Cr < 0 ? formatMoney(abs($Dr + $Cr)) : '';
                        $OpCr = $Dr + $Cr > 0 ? formatMoney(abs($Dr + $Cr)) : '';

                        $DebitAmount = $total->DebitAmount == '' ? '' : formatMoney(abs($total->DebitAmount));
                        $CreditAmount = $total->CreditAmount == '' ? '' : formatMoney(abs($total->CreditAmount));

                        echo "<tr>";
                        echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$row->Name</a></td>";
                        echo "<td>$DebitAmount</td>";
                        echo "<td>$CreditAmount</td>";
                        echo "</tr>";
                    }
                    ?>       
                    <tr>
                        <td>Difference Opening Balance</td>
                        <td><?php echo formatMoney($OpDr); ?></td>
                        <td><?php echo formatMoney($OpCr); ?></td>
                    </tr>
                </tbody>

            </table>

            <hr>
            <div style="width: 100%; clear: both; padding: 5px 5px;">
                <table class="table">
                    <tr>
                        <td>Grand Total:</td>
                        <td width="150" class="right"><?php echo formatMoney(abs($Dr + $OpDr)); ?></td>
                        <td width="150" class="right"><?php echo formatMoney(abs($Cr + $OpCr)); ?></td>
                    </tr>
                </table>
            </div>


        </div><!--/span-->
    </div>	
</div>



<?php include '../body/footer.php'; ?>




