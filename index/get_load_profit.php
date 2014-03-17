<?php

include '../lib/DbManager.php';

// First day of the month.
$day1 = date('Y-m-01', strtotime($date));

// Last day of the month.
$day2 = date('Y-m-30', strtotime($date));



$result = array();




$sqlProfit = "SELECT  DATE_FORMAT(t.TranDate,'%b') AS TranDate,
    SUM(IFNULL(cld.InterestAmount,0)) AS InterestAmount 
    
    FROM `transaction` t
    LEFT JOIN collection_loan_details cld ON cld.TransactionId=t.TransactionId
    WHERE t.CompanyId='$companyId' AND t.VoucherTypeId IS NOT NULL #AND TranDate BETWEEN '$day1' AND '$day2'
    GROUP BY DATE_FORMAT(t.TranDate,'%b') 
    ORDER BY t.TranDate ASC";

$profitAmount = query($sqlProfit);


$profit = array();
$profit['name'] = 'Profit';
for ($i = 1; $i <= 12; $i++) {

    $resultProfit = $profitAmount->fetch_object();
    $profit['data'][] = $resultProfit->InterestAmount == '0' ? NULL : (float) $resultProfit->InterestAmount;
}

array_push($result, $profit);


$sqlPrincipal = "SELECT SUM(IFNULL(cld.PrincipalAmount,0)) AS PrincipalAmount 
    
    FROM `transaction` t
    LEFT JOIN collection_loan_details cld ON cld.TransactionId=t.TransactionId
    WHERE t.CompanyId='$companyId' AND t.VoucherTypeId IS NOT NULL #AND TranDate BETWEEN '$day1' AND '$day2'
    GROUP BY DATE_FORMAT(t.TranDate,'%b') 
    ORDER BY t.TranDate ASC";

$principalAmount = query($sqlPrincipal);


$principal = array();
$principal['name'] = 'Principal';
for ($i = 1; $i <= 12; $i++) {

    $resultRrincipal = $principalAmount->fetch_object();
    $principal['data'][] = $resultRrincipal->PrincipalAmount == '0' ? NULL : (float) $resultRrincipal->PrincipalAmount;
}

//print_r($principal);
//die();

array_push($result, $principal);



//Installment
$sqlInstallment = "SELECT SUM(IFNULL(cld.PrincipalAmount+InterestAmount,0)) AS InstallMent 
    
    FROM `transaction` t
    LEFT JOIN collection_loan_details cld ON cld.TransactionId=t.TransactionId
    WHERE t.CompanyId='$companyId' AND t.VoucherTypeId IS NOT NULL #AND TranDate BETWEEN '$day1' AND '$day2'
    GROUP BY DATE_FORMAT(t.TranDate,'%b') 
    ORDER BY t.TranDate ASC";

$sqlInstallmentAmount = query($sqlInstallment);


$installment = array();
$installment['name'] = 'Installment';
for ($i = 1; $i <= 12; $i++) {

    $resultInstallment = $sqlInstallmentAmount->fetch_object();
    $installment['data'][] = $resultInstallment->InstallMent == '0' ? NULL : (float) $resultInstallment->InstallMent;
}

array_push($result, $installment);


echo json_encode($result);
//echo json_encode($result, JSON_NUMERIC_CHECK); //php 5.3
?>
