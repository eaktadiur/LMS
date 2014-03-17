<?php

include '../lib/DbManager.php';

$sth0 = query("SELECT DATE_FORMAT(CreatedOn,'%Y-%m-%d') as 'DATETIME' FROM `transaction` WHERE CompanyId=88 LIMIT 0,5");
$rows0 = array();
$rows0['name'] = 'DATETIME';
while ($r0 = mysql_fetch_array($sth0)) {
    $rows0['data'][] = $r0['DATETIME'];
}

$sth1 = query("SELECT TransactionId as 'dg_t01' FROM `transaction` WHERE CompanyId=88 LIMIT 0,5");
$rows1 = array();
$rows1['name'] = 'dg_t01';
while ($r1 = mysql_fetch_array($sth1)) {
    $rows1['data'][] = $r1['dg_t01'];
}

$sth2 = query("SELECT TransactionId+5 as 'dg_h01' FROM `transaction` WHERE CompanyId=88 LIMIT 0,5");
$rows2 = array();
$rows2['name'] = 'dg_h01';
while ($r2 = mysql_fetch_array($sth2)) {
    $rows2['data'][] = $r2['dg_h01'];
}

$result = array();
array_push($result, $rows0);
array_push($result, $rows1);
array_push($result, $rows2);

echo json_encode($result);
?>