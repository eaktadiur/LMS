<?php

include_once '../lib/DbManager.php';
include '../body/header.php';
function OrderNo($OrderId) {
    if (strlen($OrderId) == 1) {
        $OrderNo = date('Y') . '00000' . $OrderId;
    } elseif (strlen($OrderId) == 2) {
        $OrderNo = date('Y') . '0000' . $OrderId;
    } elseif (strlen($OrderId) == 3) {
        $OrderNo = date('Y') . '000' . $OrderId;
    } elseif (strlen($OrderId) == 4) {
        $OrderNo = date('Y') . '00' . $OrderId;
    } elseif (strlen($OrderId) == 5) {
        $OrderNo = date('Y') . '0' . $OrderId;
    } elseif (strlen($OrderId) == 6) {
        $OrderNo = date('Y') . $OrderId;
    }

    return $OrderNo;
}


$result = query("SELECT `Code`, CustomerId FROM customer WHERE CompanyID=102");
while ($row = $result->fetch_object()) {

    echo $code = OrderNo("$row->CustomerId");
    query("UPDATE customer SET `Code`='$code' WHERE CustomerId='$row->CustomerId'");
    echo "<br>";
}
?>


<?php

include '../body/footer.php';
?>