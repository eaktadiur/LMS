<?php
include '../lib/DbManager.php';


if (isSave()) {
    //print_r($_POST);

    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');

    $partyLedger = getParam('partyLedger');
    $salesLedger = getParam('salesLedger');

    $productId = getParam('productId');
    $qty = getParam('qty');
    $rate = getParam('rate');
    $monthId = date('n');

    if ($mode == 'new') {

        $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, MonthId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '', '$date', '$note', '$voucherType', '$monthId', '$EmployeeId', NOW(), '$CompanyId')";

        sql($transaction);
        $transactionId = mysql_insert_id();

        foreach ($productId as $key => $value) {

            $total = $qty[$key] * $rate[$key];
            $LPP = findValue("SELECT LPP FROM stockitem WHERE StockItemID='$productId[$key]'");
            $intotal = $qty[$key] * $LPP;
            $inventoryDetails = "INSERT INTO inventorydetail(TransactionId, ProductId, Qty, Rate, OutTotal, InTotal, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$productId[$key]', '-$qty[$key]', '$rate[$key]', '-$total', '-$intotal', '$EmployeeId', NOW(), '$CompanyId')";
            sql($inventoryDetails);

            $amount+=($qty[$key] * $rate[$key]);
        }

        $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$salesLedger', '1', '$amount', '$EmployeeId', NOW(), '$CompanyId')";
        sql($transactionDr);

        $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$partyLedger', '2', '$amount', '$EmployeeId', NOW(), '$CompanyId')";
        sql($transactionCr);
    } else {
        
    }
}
?>

<script type="text/javascript">location.replace('inventory_voucher.php');</script>