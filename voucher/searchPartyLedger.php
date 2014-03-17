<?php

include '../lib/DbManager.php';


$term = getParam('term');
$requisition_type_id = getParam('requisition_type_id');
$processDeptId = getParam('processDeptId');

$sql = "SELECT l.LedgerID, l.`Name`
FROM ledger l 
INNER JOIN `group` g ON g.GroupID=l.GroupID
WHERE l.CompanyID='$CompanyId' AND l.`Name` LIKE '%$term%'
ORDER BY l.`Name` ASC";


$sql_result = query($sql);

$data = array();
while ($row = fetch_object($sql_result)) {
    $data[] = array(
        'label' => $row->Name,
        'value' => $row->Product,
        'unit' => $row->UNIT_TYPE_NAME,
        'category' => $row->DESCRIPTION,
        'price' => $row->PURCHASE_PRICE
    );
}
echo json_encode($data);
flush();
