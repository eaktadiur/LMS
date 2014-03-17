<?php
include '../lib/DbManager.php';
include './stock_item.php';
$dal = new stock_item(); 

$search = getParam('search');
$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 20;
$offset = ($page - 1) * $rows;
$result = $dal->getDataGrid($offset, $rows, $search, $CompanyId);

echo $result;
?>

