<?php

class voucherType extends DBManager {

    public function getDataGrid($offset, $rows, $search, $CompanyId) {
        $result = array();
        $result["total"] = $this->count($search, $CompanyId);

        //$res = $search == "" ? " " : " WHERE DISTRICT_NAME LIKE '%$search%'";
        $limt = $search == '' ? " LIMIT $offset, $rows" : '';

        $sql = "SELECT vt.Id, mv.`Name`, mv.`Name` AS 'Parent'

        FROM vouchertype AS vt 
        LEFT JOIN mainvoucher AS mv ON mv.Id=vt.MainVoucherId
        WHERE vt.CompanyID='$CompanyId' $limt";
        $sql_result = $this->query($sql);

        $items = array();
        while ($row = fetch_object($sql_result)) {
            array_push($items, $row);
        }
        $result["rows"] = $items;

        return json_encode($result);
    }

    public function count($search, $CompanyId) {
        $rs = $this->query("SELECT count(*) FROM vouchertype AS vt 
        LEFT JOIN mainvoucher AS mv ON mv.Id=vt.MainVoucherId
        WHERE vt.CompanyID='$CompanyId'");
        $row = fetch_row($rs);

        return $row[0];
    }

}

?>
