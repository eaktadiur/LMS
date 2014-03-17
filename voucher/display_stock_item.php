<?php

include '../lib/DbManager.php';

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 200;
$offset = ($page - 1) * $rows;



$result = array();
$q = isset($_POST['q']) ? $_POST['q'] : '';


$res = strlen($q) <= 2 ? '' : " AND si.`Name` LIKE '%$q%'";

$rs = $db->query("SELECT count(*) 
    FROM stock s
    INNER JOIN stockitem si ON si.StockItemID=s.ProductId
    WHERE s.CompanyId='$CompanyId' AND s.Qty>0 $res");

$row = fetch_row($rs);
$result["total"] = $row[0];




echo $sql = "SELECT si.`Name`, s.ProductId, s.Qty
FROM stock s
INNER JOIN stockitem si ON si.StockItemID=s.ProductId
WHERE s.CompanyId='$CompanyId' AND s.Qty>0 $res
ORDER BY si.`Name` ASC LIMIT $offset,$rows";

$result_sql = $db->query($sql);


$items = array();
while ($row = fetch_object($result_sql)) {
    array_push($items, $row);
}

$result["rows"] = $items;

echo json_encode($result);
?>