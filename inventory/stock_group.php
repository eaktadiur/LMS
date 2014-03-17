<?php

class stock_group extends DBManager {

    public function getDataGrid($offset, $rows, $search, $CompanyId) {
        $result = array();
        $result["total"] = $this->count($search, $CompanyId);

        $res = $search == "" ? " " : " WHERE DISTRICT_NAME LIKE '%$search%'";
        $limt = $search == '' ? " LIMIT $offset, $rows" : '';

        $sql = "SELECT sg.StockGroupID, sg.`Name`, ug.`Name` 'Under', ug.UnderID
            FROM stockgroup sg
            LEFT JOIN stockgroup ug ON ug.StockGroupID=sg.UnderID
            WHERE sg.CompanyID='$CompanyId' ORDER BY sg.`Name` $limt";
        $sql_result = $this->query($sql);

        $items = array();
        while ($row = fetch_object($sql_result)) {
            array_push($items, $row);
        }
        $result["rows"] = $items;

        return json_encode($result);
    }

    public function count($search, $CompanyId) {
        $res = $search == "" ? '' : " WHERE DISTRICT_NAME LIKE '%$search%'";

        $rs = $this->query("SELECT count(*) FROM stockgroup 
            WHERE CompanyID='$CompanyId'");
        $row = fetch_row($rs);

        return $row[0];
    }

    public function getDistrictAll() {
        $sql = "SELECT DISTRICT_ID, DISTRICT_NAME FROM district ORDER BY DISTRICT_NAME";
        $result = $this->query($sql);

        return $result;
    }

}

?>
