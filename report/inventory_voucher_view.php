<?php
include '../lib/DbManager.php';
include("../body/header.php");
include './report.php';

$report = new report();

$searchId = getParam('searchId');
$voucherType = $db->rs2array(("SELECT Id, `Name` FROM vouchertype WHERE CompanyId='$CompanyId' AND MainVoucherId=''"));

$sql = "SELECT Ref, TranDate, Note, VoucherTypeId FROM `transaction` t 
        WHERE t.TransactionId='$searchId' AND CompanyId='$CompanyId'";

//$result = $db->find($sql);



$partyLedgerId = findValue("SELECT l.`Name` 
FROM transactiondetail td
INNER JOIN ledger l ON l.LedgerID=td.LedgerId
WHERE td.TransactionId='$searchId' AND TransactionType=2");

$salesLedgerId = findValue("SELECT l.`Name` 
FROM transactiondetail td
INNER JOIN ledger l ON l.LedgerID=td.LedgerId
WHERE td.TransactionId='$searchId' AND TransactionType=1");

$result = $report->inventoryVoucherView($searchId, $CompanyId);

$inventoryDetails = $report->inventoryDetails($searchId);

$partyLedger = $db->rs2array("SELECT LedgerID, `Name` FROM ledger WHERE CompanyID='$CompanyId'");
$salesLedger = $db->rs2array("SELECT LedgerID, l.`Name`
FROM ledger l
INNER JOIN `group` g ON g.GroupID=l.GroupID
WHERE l.CompanyID='$CompanyId' AND g.`Name`='Sales Accounts'");
?>

<div title="Voucher Create" class="easyui-panel" style="padding: 10px 0px;">   

    <table>
        <tr>
            <td>Ref: <b><?php echo $result->Ref; ?></b></td>
            <td width="650"></td>
            <td align="right">Date: <b><?php echo $result->TranDate; ?></b></td>
        </tr>
        <tr>
            <td>Party Ledger: <b><?php echo $partyLedgerId; ?></b></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Current Balance: </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>Sales Ledger: <b><?php echo $salesLedgerId; ?></b></td>
            <td></td>
            <td><a href="javascript:history.back(1)" class="button">Back</a></td>
        </tr>
    </table>
    <hr/>
    <table id="productGrid" class="ui-state-default" width="100%">
        <thead>
            <tr>
                <th>S/N</th>
                <th>Product Name</th>
                <th width="100">Qty</th>
                <th width="100">Rate</th>
                <th width="50">Unit</th>
                <th width="150">Total</th>
            </tr>
        </thead>
        <tbody>
            <?php while ($row = $db->fetch_object($inventoryDetails)) { ?>
                <tr>
                    <td><?php echo++$sl; ?></td>
                    <td><?php echo $row->Name; ?></td>
                    <td align="right"><?php echo abs($row->Qty); ?></td>
                    <td align="right"><?php echo $row->Rate; ?></td>
                    <td><?php echo $row->unit; ?></td>
                    <td align="right"><?php echo formatMoney(abs($row->total)); ?></td>
                </tr>
                <?php
            }
            ?>
        </tbody>
    </table>
    <hr/><br/>
    Note: <b><?php echo $result->Ref; ?></b>
</div>

<?php include '../body/footer.php'; ?>
