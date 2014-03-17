<?php
include '../lib/DbManager.php';
include("../body/header.php");
include './report.php';


$searchId = getParam('searchId');
$voucherType = rs2array(("SELECT VoucherTypeId, `Name` FROM voucher_type WHERE CompanyId='$companyId' AND MainVoucherId=''"));

$sql = "SELECT Ref, TranDate, Note, VoucherTypeId FROM `transaction` t 
        WHERE t.TransactionId='$searchId' AND CompanyId='$companyId'";

//$result = $db->find($sql);

$partyLedgerId = find("SELECT l.`Name`, 
    (CASE WHEN lb.Cr>0 THEN IFNULL(lb.Cr,0) ELSE IFNULL(lb.Dr,0) END) AS 'balance'
    FROM transactiondetail td
    INNER JOIN ledger l ON l.LedgerID=td.LedgerId
    LEFT JOIN ledgerbalance lb ON lb.LedgerID=l.LedgerID
    WHERE td.TransactionId='$searchId' AND TransactionType=2");

$salesLedgerId = findValue("SELECT l.`Name` 
FROM transactiondetail td
INNER JOIN ledger l ON l.LedgerID=td.LedgerId
WHERE td.TransactionId='$searchId' AND TransactionType=1");

$result = inventoryVoucherView($searchId, $companyId);

$transactionDetails = voucherDetails($searchId);

$partyLedger = rs2array("SELECT LedgerID, `Name` FROM ledger WHERE CompanyID='$companyId'");
$salesLedger = rs2array("SELECT LedgerID, l.`Name`
FROM ledger l
INNER JOIN `group` g ON g.GroupID=l.GroupID
WHERE l.CompanyID='$companyId' AND g.`Name`='Sales Accounts'");


?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Voucher Details</a>
            </h3>
        </div>
        <div class="box-content">
            
        <?php echo $result->Name; ?> Voucher
        <table>
            <tr>
                <td width="300">Ref: <b><?php echo $result->Ref; ?></b></td>
                <td width="500"></td>
                <td align="right">Date: <b><?php echo $result->TranDate; ?></b></td>
            </tr>
            <tr>
                <td>Party Ledger: <b><?php echo $partyLedgerId->Name; ?></b></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Current Balance: <b><?php echo $partyLedgerId->balance; ?></b></td>
                <td></td>
                <td>
                    <button onclick="goBack();" class="btn btn-primary">
                        <i class="icon-white icon-arrow-left"></i> Back
                    </button>
                </td>
            </tr>
        </table>
        <hr/>

        <br>

        <table class="table table-striped table-bordered bootstrap-datatable">
            <thead>
            <th width="30">S/N</th>
            <th>Customer Name</th>
            <th width="100">Debit</th>
            <th width="100">Credit</th>
            </thead>
            <tbody>
                <?php
                while ($row = $transactionDetails->fetch_object()) {
                    $DrTotal+=$row->DebitAmount;
                    $CrTotal+=$row->CreditAmount;
                    ?>
                    <tr>
                        <td><?php echo ++$sl; ?></td>
                        <td><?php echo $row->Name; ?></td>
                        <td align="right"><?php echo $row->DebitAmount; ?></td>
                        <td align="right"><?php echo $row->CreditAmount; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
            <tfoot>
            <th></th>
            <th align="right">Grand Total</th>
            <th align="right"><?php echo formatMoney($DrTotal); ?></th>
            <th align="right"><?php echo formatMoney($CrTotal); ?></th>
            </tfoot>
        </table>
        
        <hr/><br/>
        Note: <b><?php echo $result->Ref; ?></b>
        </div><!--/span-->
    </div>	
</div>

<?php include '../body/footer.php'; ?>
