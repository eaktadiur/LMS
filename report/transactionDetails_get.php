<?php

include '../lib/DbManager.php';
include './report.php';
$dal = new report(); 

$ledgerId = getParam('ledgerId');

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 20;
$offset = ($page - 1) * $rows;
$result = $dal->transactionDetails($offset, $rows, $ledgerId, $CompanyId);

echo $result;
?>

