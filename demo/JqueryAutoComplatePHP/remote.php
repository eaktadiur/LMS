<?php
include '../lib/DbManager.php';


$term = getParam('term');

$sql = "SELECT g.`Name`, ug.`Name` AS under, gn.GroupNatureName
FROM `group` g
LEFT JOIN `group` ug ON ug.GroupID=g.UnderGroupID
LEFT JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
WHERE g.CompanyID='88' AND g.`Name` LIKE '%$term%'";


$sql_result = query($sql);

$data = array();
while ($row = fetch_object($sql_result)) {
    $data[] = array(
        'value' => $row->Name,
        'Under' => $row->under,
        'Nature' => $row->GroupNatureName
    );
}
echo json_encode($data);
flush();
