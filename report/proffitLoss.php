<?php
include '../lib/DbManager.php';

$fromDate = getParam('fromDate');
$fromDate = $fromDate == '' ? today() : $fromDate;

$toDate = getParam('toDate');
$toDate = $toDate == '' ? today() : $toDate;

include '../body/header.php';
?>

<div class="box span12">
    <div class="box-header well" data-original-title>
        <h3>
            <a href="#">Home</a><span class="divider"> /</span>
            <a href="#">Profit & Loss A/C</a>
        </h3>
    </div>
    <div class="box-content">


        <form action="" method="GET">
            <table class="table" width="100%">
                <tr>
                    <td>From :</td>
                    <td><input type="text" name="fromDate" class="easyui-datebox" value="<?php echo $fromDate; ?>" /></td>
                    <td>To: </td>
                    <td><input type="text" name="toDate" class="easyui-datebox" value="<?php echo $toDate; ?>" /></td>
                    <td><button type="submit" class="btn btn-primary" >
                            <i class="icon-white icon-search"></i> Search
                        </button>
                    </td>
                </tr>
            </table>

        </form>
        <div>
            <div class="span6">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th field="3" width="395">Liabilities</th>
                            <th field="4" width="100" align="right">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sqlLibili = "SELECT GroupID, `Name`, gn.GroupNatureName, GetFamilyTreeGroup(GroupID)AS groupList
                        FROM `group` g
                        INNER JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
                        WHERE CompanyID='$companyId' AND UnderGroupID=0 AND g.GroupNatureID=4
                        ORDER BY g.`Name` DESC";
                        $resultLib = query($sqlLibili);

                        $opening = find("SELECT 'Opening Stock' AS 'Name', SUM(IFNULL(InTotal,0))AS balance,'stock_item.php?groupId' AS link 
                        FROM inventory_detail ids 
                        WHERE ids.CompanyId='$companyId' AND ids.CreatedOn<'$toDate'");
                        echo "<tr>";
                        echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$opening->Name</a></td>";
                        echo "<td>$opening->balance</td>";
                        echo "</tr>";
                        $GrandLibilites +=$opening->balance;

                        while ($row = $resultLib->fetch_object()) {

                            $groupList = $row->groupList == '' ? 0 : $row->groupList;

                            $total = find("SELECT l.LedgerID, l.`Name`, (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) AS balance
                            FROM transactiondetail td
                            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                            INNER JOIN `group` g ON g.GroupID=l.GroupID
                            WHERE l.CompanyID='$companyId' AND g.GroupNatureID=2 AND l.GroupID IN ($groupList)");
                            $GrandLibilites +=abs($total->balance);
                            echo "<tr>";
                            echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$row->Name</a></td>";
                            echo "<td>$total->balance</td>";
                            echo "</tr>";
                        }
                        ?>       
                    </tbody>
                </table>
            </div>
            <div class="span6">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th field="1" width="395">Assets</th>
                            <th field="2" width="100" align="right">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sqlAssess = "SELECT GroupID, `Name`, gn.GroupNatureName, GetFamilyTreeGroup(GroupID)AS groupList
                        FROM `group` g
                        INNER JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
                        WHERE CompanyID='$companyId' AND UnderGroupID=0 AND g.GroupNatureID=3
                        ORDER BY g.`Name` DESC";
                        $resultAssess = query($sqlAssess);

                        $opening = find("SELECT 'Closing Stock' AS 'Name', SUM(IFNULL(InTotal,0))AS balance,'stock_item.php?groupId' AS link 
                        FROM inventory_detail ids 
                        WHERE ids.CompanyId='$companyId' AND ids.CreatedOn<'$toDate'");



                        while ($row = $resultAssess->fetch_object()) {
                            $GrandAssets +=abs($total->balance);

                            $total = find("SELECT l.LedgerID, l.`Name`, (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) AS balance
                            FROM transactiondetail td
                            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                            INNER JOIN `group` g ON g.GroupID=l.GroupID
                            WHERE l.CompanyID='$companyId' AND g.GroupNatureID=3 AND l.GroupID='$row->GroupID'");
                            echo "<tr>";
                            echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$row->Name</a></td>";
                            echo "<td>" . formatMoney(abs($total->balance)) . "</td>";
                            echo "</tr>";
                        }

                        echo "<tr>";
                        echo "<td><a href='group_account_summery.php?groupid=$row->GroupID'>$opening->Name</a></td>";
                        echo "<td>$opening->balance</td>";
                        echo "</tr>";

                        $GrandAssets +=$opening->balance;
                        ?>        
                    </tbody>
                </table>
            </div>
<!--            <table class="table">
                <tr>
                    <td></td>
                    <td class="right"><?php echo formatMoney($GrandLibilites); ?></td>
                    <td></td>
                    <td class="right"><?php echo formatMoney($GrandAssets); ?></td>
                </tr>
            </table>-->
        </div>
    </div>
</div><!--/span-->



<?php include '../body/footer.php'; ?>




