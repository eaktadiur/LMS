<?php
include '../lib/DbManager.php';
$customerId = getParam('val');

echo $var = findValue("SELECT LoanAmount 
FROM loan_disburse
WHERE CustomerId='$customerId' ORDER BY CreatedDate DESC LIMIT 0,1");
?>
