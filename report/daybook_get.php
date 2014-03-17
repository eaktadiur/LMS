<?php

include '../lib/DbManager.php';
include './report.php';
$dal = new report(); 

$fromDate = getParam('fromDate');
$toDate = getParam('toDate');

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 20;
$offset = ($page - 1) * $rows;
$result = $dal->dayBook($offset, $rows, $fromDate, $toDate, $CompanyId);

echo $result;
?>

