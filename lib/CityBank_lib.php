<?php

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

function user_location($userName) {

    $rec = find("SELECT d.DIVISION_NAME, bd.BRANCH_DEPT_NAME, ot.OFFICE_NAME
            FROM employee e 
            left join branch_dept bd on bd.BRANCH_DEPT_ID = e.BRANCH_DEPT_ID
            left join office_type ot ON ot.OFFICE_TYPE_ID=bd.OFFICE_TYPE_ID
            LEFT JOIN division d ON d.DIVISION_ID=e.DIVISION_ID
            left join master_user u on u.EMPLOYEE_ID = e.EMPLOYEE_ID
            where u.USER_NAME='$userName'");


    $user_location = $rec->DIVISION_NAME . " > " . $rec->BRANCH_NAME;
    if (substr($user_location, -3) == ' > ') {
        $user_location = substr($user_location, 0, -3);
    }


    return $user_location;
}

function UpdateRequestStatus($RequestID, $ModifyBy) {
    $SqlUpdateRequest = "UPDATE request_list SET
             MODIFY_BY = '$ModifyBy',
             MODIFY_DATE = NOW(),
             REQUEST_STATUS = '1'
             WHERE REQUEST_LIST_ID = '$RequestID' ";

    return $update = query($SqlUpdateRequest);
}

function user_identity($user_name) {

    $rec = find("select FIRST_NAME, CARD_NO, LAST_NAME
		 from employee e 
		 left join master_user u on u.USER_NAME =  e.CARD_NO 	
		 where u.USER_NAME='$user_name'");

    $user_identity = $rec->FIRST_NAME . ' ' . $rec->LAST_NAME . " ( " . $rec->CARD_NO . " ) ";
    return $user_identity;
}

function challan_no($challan_no) {
    list($y, $m, $d) = explode("-", date("Y-m-d"));
    $y_num = substr($y, 2, 2);
    $random = rand(3, 6);
    $challan_no = $y_num . "0000" . $challan_no;
    return $challan_no;
}

function total_received_sr() {
    $order_update = query("SELECT si.REQUISITION_ID,
sum(si.quantity) as quantities,
sum(dh.deliverd) as deliverd,
'fully_received' as product_status
from (SELECT PRODUCT_ID, REQUISITION_ID, STATUS_APP_LEVEL,
sum(si.QTY) as quantity
from requisition_details si
group by si.PRODUCT_ID, si.REQUISITION_ID) si
left join (
select req_id, product_id, sum(delivery_qty) as deliverd
from app_product_delivery_history
group by req_id, product_id
) dh on si.REQUISITION_ID=dh.req_id and si.PRODUCT_ID=dh.product_id
group by si.REQUISITION_ID having min(si.status_app_level)=4 and sum(si.quantity)=sum(dh.deliverd)");
    while ($rec_so = fetch($order_update)) {
        sql("update requisition set REQUISITION_STATUS_ID=5 where REQUISITION_ID=$rec_so->REQUISITION_ID");
    }
}

function partly_received_requisition() {
    $order_update = query("SELECT si.REQUISITION_ID,
sum(si.quantity) as quantities,
sum(dh.deliverd) as deliverd,
'partial_receipt' as product_status
from 	(
SELECT PRODUCT_ID, REQUISITION_ID, STATUS_APP_LEVEL,
sum(si.QTY) as quantity
from requisition_details si
group by si.PRODUCT_ID, si.REQUISITION_ID
) si
left join (
select req_id, product_id, sum(delivery_qty) as deliverd
from app_product_delivery_history
group by req_id, product_id
) dh on si.REQUISITION_ID=dh.req_id and si.PRODUCT_ID=dh.product_id
group by si.REQUISITION_ID
having (min(si.STATUS_APP_LEVEL)=4 and sum(si.quantity) > sum(dh.deliverd))
or (min(si.STATUS_APP_LEVEL) < 4 and max(si.status_app_level) >= 4)");

    while ($rec_so = fetch($order_update)) {
        sql("update requisition set REQUISITION_STATUS_ID=4 where REQUISITION_ID=$rec_so->REQUISITION_ID");
    }
}

function allocated($productid) {
    $value = findValue("select sum(delivery_qty) as allocated from app_product_delivery_history
		   where product_id='$productid' AND challan_id IS NULL group by product_id");
    return $value ? $value : 0;
}

function stock($productid) {
    $available = findValue("select sum(QTY) as stock from stockmove
	where PRODUCT_ID='$productid' group by PRODUCT_ID");
    return $available ? $available : 0;
}

function delivery($productid) {
    $value = findValue("select sum(delivery_qty) as delivery from app_product_delivery_history where product_id='$productid' and receipt_by=0 ");
    return $value;
}

function star_sign($priorityid) {
    $star_num = str_repeat("&#42;", $priorityid);
    $color = ($priorityid == 3) ? 'red' : 'black';
    $str_sign = "<font style='letter-spacing:3px; font-size:16px; font-weight:bold; color:$color'> $star_num </font>";
    return $str_sign;
}

function GetPriorityList() {
    return $priorityList = array(array(1, 'Normal'), array(2, 'Medium'), array(3, 'EMERGENCY'));
}

function reco_no($reco_no) {
    $rec_date = findValue("select REQUISITION_DATE from requisition where REQUISITION_ID='$reco_no'");
    list($y, $m, $d) = explode("-", $rec_date);
    $y_num = substr($y, 2, 2);
    $reco_num = $y_num . "000" . $reco_no;
    return $reco_num;
}

function dateMysql($rawDate) {
    if ($rawDate) {
        $date = date('Y-m-d', strtotime($rawDate));
    } else {
        $date = '';
    }
    return $date;
}
?>

