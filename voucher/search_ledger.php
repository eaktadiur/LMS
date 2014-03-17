<?php

include '../lib/DbManager.php';

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 200;
$offset = ($page - 1) * $rows;



$result = array();
$q = isset($_POST['q']) ? $_POST['q'] : '';


$res = strlen($q) <= 2 ? '' : " AND l.`Name` LIKE '%$q%'";

$sql = "SELECT l.LedgerID, l.`Name`
FROM ledger l 
INNER JOIN `group` g ON g.GroupID=l.GroupID
WHERE l.CompanyID='$CompanyId' $res
ORDER BY l.`Name` ASC LIMIT $offset,$rows";

$result_sql = $db->query($sql);


$items = array();
while ($row = fetch_object($result_sql)) {
    array_push($items, $row);
}

$result["rows"] = $items;

echo json_encode($result);
?>