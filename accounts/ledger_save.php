<?php

include '../lib/DbManager.php';

$object_name = 'ledger';
$object_id = $object_name . 'ID';

$mode = getParam('mode');
$search_id = getParam('search_id');

include '../lib/master_page_save.php';
/*
$id = insert_id();

$Name = getParam('Name');
$GroupID = getParam('GroupID');
$OpenningDr = getParam('OpenningDr');
$OpenningCr = getParam('OpenningCr');

if ($mode == 'new') {
    $maxID = NextId("$object_name", "$object_id");

    $transaction = "INSERT INTO `transaction`(Ref,  CreatedBy, CreatedOn, CompanyId) VALUES('Opening', '$EmployeeId', NOW(), '$CompanyId')";
    sql($transaction);
    $transactionId = mysql_insert_id();

    $transactionDetails = "INSERT INTO transactiondetail(TransactionId, LedgerId, DebitAmount, CreditAmount, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$transactionId', '$maxID',  '$OpenningDr', '$OpenningCr', '$EmployeeId', NOW(), '$CompanyId')";
    sql($transactionDetails);

    $sql_insert = "INSERT INTO `ledger`(ledgerID,`Name`, `GroupID`, OpenningDr, OpenningCr, TransactionID, CompanyID, CreatedBy, CreatedDate) 
        values ('$maxID', '$Name', '$GroupID','$OpenningDr', '$OpenningCr', '$transactionId', '$CompanyId', '$EmployeeId', CURDATE())";
    $result = sql($sql_insert);
    //sql("INSERT INTO ledgerbalance(Dr, Cr, CreatedBy, CreatedDate)VALUES('$OpenningDr', '$OpenningCr', '$userName', CURDATE())");
} elseif ($mode == 'delete') {
    $sql_update = "DELETE FROM  `$object_name` WHERE $object_id ='$search_id'";
    $result = sql($sql_update);
} else {
    $sql_update = "Update `ledger` set 
        Name='$Name',
        GroupID='$GroupID',
        OpenningDr='$OpenningDr',
        OpenningCr='$OpenningCr',
        ModifiedBy='$EmployeeId',
        ModifiedDate=NOW()
        WHERE ledgerID ='$search_id'";
    $result = sql($sql_update);

    $transactionId = findValue("SELECT TransactionID FROM ledger WHERE LedgerID='$search_id'");


    sql("UPDATE transactiondetail SET 
        DebitAmount='$OpenningDr', 
        CreditAmount='$OpenningCr',
        ModifiedBy='$EmployeeId',
        ModifiedOn=NOW()
        WHERE TransactionId='$transactionId'");
}

*/
if ($result) {
    echo json_encode(array('success' => true));
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>