<?php

class stock_item extends DBManager {

    public function getDataGrid($offset, $rows, $search, $CompanyId) {
        $result = array();
        $result["total"] = $this->count($search, $CompanyId);

        $res = $search == "" ? " " : " WHERE DISTRICT_NAME LIKE '%$search%'";
        $limt = $search == '' ? " LIMIT $offset, $rows" : '';

        $sql = "SELECT StockItemID, si.`Name`, sg.`Name` AS 'Parent',
            si.StockGroupID, UnderUnitId, u.`Name` AS 'unit'
        FROM stockitem si
        LEFT JOIN stockgroup sg ON sg.StockGroupId=si.StockGroupID
        LEFT JOIN unit u ON u.UnitId=si.UnderUnitId
        WHERE si.CompanyID='$CompanyId' ORDER BY si.`Name` $limt";
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

        $rs = $this->query("SELECT count(*) FROM stockitem si
        LEFT JOIN stockgroup sg ON sg.StockGroupId=si.StockGroupID
        WHERE si.CompanyID='$CompanyId'");
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
