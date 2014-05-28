<?php
include '../lib/DbManager.php';


if (isSave()) {

    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');

    $partyLedger = getParam('partyLedger');

    $ledgerId = getParam('ledgerId');
    $amount = getParam('amount');
    $monthId = date('n');
    $chk = getParam('chk');



    if ($mode == 'new') {

        $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, MonthId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '', '$date', '$note', '$voucherType', '$EmployeeId', '$monthId', NOW(), '$CompanyId')";

        query($transaction);
        $transactionId = insertLastId();

        foreach ($chk as $key => $value) {

            $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$ledgerId[$key]', '1', '$amount[$key]', '$EmployeeId', NOW(), '$CompanyId')";
            query($transactionDr);

            query("UPDATE ledgerbalance SET Dr=Dr+$amount[$key] WHERE LedgerID=$ledgerId[$key]");

            $total+=$amount[$key];
        }

        $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$partyLedger', '2', '$total', '$EmployeeId', NOW(), '$CompanyId')";
        query("UPDATE ledgerbalance SET Cr=Cr+$total WHERE LedgerID=$ledgerId[$key]");
        query($transactionCr);
    } else {
        
    }
}
?>

<script type="text/javascript">location.replace('journal_voucher.php');</script>