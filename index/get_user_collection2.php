<?php

include '../lib/DbManager.php';


$emp = "SELECT  DATE_FORMAT(t.TranDate,'%b') AS TranDate,
CONCAT(e.FirstName,' ',e.LastName) eName,
SUM(IFNULL(cld.PrincipalAmount+InterestAmount,0))AS InstallMent 

FROM `transaction` t
INNER JOIN employee e ON e.EmployeeId=t.CreatedBy
LEFT JOIN collection_loan_details cld ON cld.TransactionId=t.TransactionId
WHERE t.CompanyId='$companyId' GROUP BY t.CreatedBy";

$resultMonth = query($emp);

$result = array();
$rows = array();
while ($row = $resultMonth->fetch_object()) {
    $rows[0] = $row->eName;
    $rows[1] = $row->InstallMent != 0 ? (float) $row->InstallMent : NULL;
    array_push($result, $rows);
}


echo json_encode($result);
//echo json_encode($result, JSON_NUMERIC_CHECK); //php 5.3
?>
