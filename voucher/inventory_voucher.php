<?php
include '../lib/DbManager.php';
include("../body/header.php");

$voucherId = getParam('voucherId');
$MainVoucherId = getParam('mainVoucherId');

$MainVoucherId = 10;
//$maxId = NextId('transaction', 'TransactionId');
$date = date('Y-m-d');
$voucherTypeList = rs2array(("SELECT VoucherTypeId, `Name` FROM voucher_type WHERE CompanyId='$CompanyId' AND MainVoucherId='$MainVoucherId'"));

$partyLedger = rs2array("SELECT LedgerID, `Name` FROM ledger WHERE CompanyID='$CompanyId'");
$salesLedger = rs2array("SELECT LedgerID, l.`Name`
FROM ledger l
INNER JOIN `group` g ON g.GroupID=l.GroupID
WHERE l.CompanyID='$CompanyId' AND g.`Name`='Sales Accounts'");


$groupList = rs2array("SELECT StockItemID, `Name` FROM stockitem WHERE CompanyID='$CompanyId'");
comboBox('product', $groupList, '', TRUE, 'product');


?>

<style type="text/css">
    .product{width: 100%;}
    #productID{position: fixed; bottom: -100px;}
</style>

<script src="inventory_voucher.js" type="text/javascript" ></script>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Sales Voucher: <?php echo $maxId; ?></a>
            </h3>
        </div>
        <div class="box-content">

    <form action="save_inventory.php" method="POST" name='requisition' id='requisition' class="form" autocomplete="off">

        <input type="hidden" name="mode" value="new" />
        <input type="hidden" name="search_id" value="<?php echo $search_id ?>" />
        <input type="hidden" name="voucherType" id="voucherType" value="<?php echo $voucherId; ?>"/>

        <table style="width: 100%;">
            <tr>
                <td width="220">Ref: <input type="text" name="ref" value="<?php echo $ref; ?>"/></td>
                <td></td>
                <td width="170" align="right">Date: <input type="text" name="date" class="easyui-datebox"  value="<?php echo $date; ?>" data-options="required:true, formatter:myformatter,parser:myparser"/></td>
            </tr>
            <tr>
                <td>Party Ledger: <?php comboBox('partyLedger', $partyLedger, '$ledgerParty', TRUE, 'required'); ?></td>
                <td>Current Balance: </td>
                <td></td>
            </tr>
            <tr>
                <td>Sales Ledger: <?php comboBox('salesLedger', $salesLedger, "$ledgerParty", TRUE, 'required'); ?></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Voucher Type: <?php comboBox('voucherType', $voucherTypeList, "$voucherId", FALSE, 'required'); ?></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <hr/>
        <button type="button" class="button" id="Add" title="productTab" onclick="addCombo();">Add More</button>
        <table id="productGrid" class="ui-state-default" width="100%">
            <thead>
                <tr>
                    <th>S/N</th>
                    <th>Product Name</th>
                    <th width="100">Qty</th>
                    <th width="100">Rate</th>
                    <th width="150">Total</th>
                    <th width="50">Action</th>
                </tr>
            </thead>
            <tbody></tbody>
        </table>
        <hr/>
        Note: <input type="text" name="note" id="note" style="width: 950px;"><br/>
        <button type="submit" value="save" name="save" class="button">Save</button>

    </form>
    <br/>

</div>
</div>
</div>

<?php include '../body/footer.php'; ?>
