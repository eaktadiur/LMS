<?php

include '../lib/DbManager.php';

$ledgerId = getParam('ledgerId');

$sql_date = "SELECT t.CreatedBy, DATE_FORMAT(t.TranDate,'%b') AS TranDate

FROM `transaction` t
INNER JOIN transactiondetail AS td ON td.TransactionId=t.TransactionId

WHERE t.CompanyId='$companyId' AND td.LedgerId='$ledgerId' AND t.VoucherTypeId IS NOT NULL
GROUP BY DATE_FORMAT(t.TranDate,'%c') 
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



$sqlProfit = "SELECT td.LedgerId, l.`Name`, DATE_FORMAT(t.TranDate,'%M') AS 'Month',
        DATE_FORMAT(t.TranDate,'%c') AS MonthId,
        SUM(IFNULL(td.DebitAmount,0)) AS 'Debit',
        SUM(IFNULL(td.CreditAmount,0)) AS 'Credit',
        g.GroupNatureId

        FROM `transaction` AS t
        INNER JOIN transactiondetail AS td ON td.TransactionId=t.TransactionId
        INNER JOIN ledger AS l ON l.LedgerID=td.LedgerId
        LEFT JOIN `group` g ON g.GroupId=l.GroupId

        WHERE l.LedgerId='$ledgerId' AND  t.CompanyId='$companyId'
        GROUP BY DATE_FORMAT(t.TranDate,'%c') 
	ORDER BY DATE_FORMAT(t.TranDate,'%c') ASC";

$Amount = query($sqlProfit);


$profit = array();
$profit['name'] = "BDT";
for ($i = 1; $i <= $loop; $i++) {

    $resultProfit = $Amount->fetch_object();
    $resultProfit->GroupNatureId;
    $Dr = $resultProfit->Debit == 0 ? '' : formatMoney($resultProfit->Debit);
    $Cr = $resultProfit->Credit == 0 ? '' : formatMoney($resultProfit->Credit);

    if ($resultProfit->GroupNatureId == 1 || $resultProfit->GroupNatureId == 3) {
        $balance = $Dr - $Cr;
    } elseif ($resultProfit->GroupNatureId == 2 || $resultProfit->GroupNatureId == 4) {
        echo $balance = $Cr - $Dr;
    }



    $profit['data'][] = $balance == 0 ? NULL : (float) $balance;
}

array_push($result, $profit);


echo json_encode($result);
//echo json_encode($result, JSON_NUMERIC_CHECK); //php 5.3
?>
