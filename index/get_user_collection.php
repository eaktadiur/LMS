<?php

include '../lib/DbManager.php';

// First day of the month.
$day1 = date('Y-m-01', strtotime($date));

// Last day of the month.
$day2 = date('Y-m-30', strtotime($date));



$sql_date = "SELECT t.CreatedBy, DATE_FORMAT(t.TranDate,'%b') AS TranDate

FROM `transaction` t
INNER JOIN employee e ON e.EmployeeId=t.CreatedBy
WHERE t.CompanyId='$companyId'
GROUP BY DATE_FORMAT(t.TranDate,'%b') 
ORDER BY DATE_FORMAT(t.TranDate,'%c') ASC";


$resultMonth = query($sql_date);


$loop = mysqli_num_rows($resultMonth);
$month = array();
$month['name'] = 'month';



while ($row = $resultMonth->fetch_object()) {
    $month['data'][] = $row->TranDate;
}

$result = array();
$result["total"] = $loop;

array_push($result, $month);



$emp="SELECT CONCAT(e.FirstName,' ',e.LastName) eName, t.CreatedBy,
    DATE_FORMAT(t.TranDate,'%b') AS TranDate

FROM `transaction` t
LEFT JOIN employee e ON e.EmployeeId=t.CreatedBy
WHERE t.CompanyId='$companyId'
GROUP BY t.CreatedBy";

$resultEmp = query($emp);

while ($row = $resultEmp->fetch_object()) {

    $sqlProfit = "SELECT  DATE_FORMAT(t.TranDate,'%b') AS TranDate,
    SUM(IFNULL(cld.PrincipalAmount+InterestAmount,0))AS InstallMent 
    
    FROM `transaction` t
    LEFT JOIN collection_loan_details cld ON cld.TransactionId=t.TransactionId
    WHERE t.CompanyId='$companyId' AND t.CreatedBy='$row->CreatedBy'";

    $Amount = query($sqlProfit);


    $profit = array();
    $profit['name'] = "$row->eName";
    for ($i = 1; $i <= $loop; $i++) {

        $resultProfit = $Amount->fetch_object();
        $profit['data'][] = $resultProfit->InstallMent > 0 ? (float) $resultProfit->InstallMent : NULL;
    }

    array_push($result, $profit);
}


echo json_encode($result);
//echo json_encode($result, JSON_NUMERIC_CHECK); //php 5.3
?>
