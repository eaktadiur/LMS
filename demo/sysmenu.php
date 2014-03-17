<?php

include_once '../lib/DbManager.php';
include_once '../body/header.php';


$menu = array(
    array(
        'menuId' => '1',
        'name' => 'Customer List',
        'link' => '../customer/index.php'
    ),
    array(
        'menuId' => '2',
        'name' => 'Company List',
        'link' => '../company/index.php'
    ),
    array(
        'menuId' => '3',
        'name' => 'Transaction',
        'link' => ''
    )
);



$menuSub = array(
    array(
        'menuId' => '100',
        'subId' => '1',
        'name' => 'Employee List',
        'link' => '../employee/index.php'
    ),
    array(
        'menuId' => '101',
        'subId' => '2',
        'name' => 'Disburse List',
        'link' => '../disburse/index.php'
    ),
    array(
        'menuId' => '102',
        'subId' => '3',
        'name' => 'Payment Voucher',
        'link' => '../voucher/payment_voucher.php'
    ),
    array(
        'menuId' => '103',
        'subId' => '3',
        'name' => 'Receive Voucher',
        'link' => '../voucher/receive_voucher.php'
    ),
    array(
        'menuId' => '104',
        'subId' => '3',
        'name' => 'Journal Voucher',
        'link' => '../voucher/journal_voucher.php'
    )
);

echo "<pre>";
print_r($menu);
echo "</pre>";

echo "<ul>";
foreach ($menu as $key => $array) {
    //echo "Id = " . $array['menuId'] . " Name = " . $array['name'] . " Link = " . $array['link'];

    echo "<li><a href = ''>" . $array['name'] . "</a>";
    foreach ($menuSub as $subKey => $subArray) {
        echo "<ul>";
        if ($subArray['subId'] == $array['menuId']) {
            echo "<li><a href = " . $subArray['link'] . ">" . $subArray['name'] . "</a></li>";
        }
        echo "</ul>";
    }
    echo "</li>";
}
echo "</ul>";
?>




<?php //include_once '../body/footer.php';   ?>

