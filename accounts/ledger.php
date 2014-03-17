<?php

class ledger extends DBManager {

    public function getDataGrid($offset, $rows, $search, $CompanyId) {
        $result = array();
        $result["total"] = $this->count($search, $CompanyId);

        $res = $search == "" ? " " : " WHERE DISTRICT_NAME LIKE '%$search%'";
        $limt = $search == '' ? " LIMIT $offset, $rows" : '';

        $sql = "SELECT l.LedgerID, l.`Name`, g.`Name` AS 'group_name', l.Address, 
        (CASE WHEN l.IsActive=1 THEN 'Yes' ELSE 'No' END) AS 'isActive',
        g.GroupID

        FROM ledger AS l 
        LEFT JOIN `group` AS g ON g.GroupID=l.GroupID
        WHERE l.CompanyID='$CompanyId' ORDER BY l.`Name` $limt";
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

        $rs = $this->query("SELECT count(*) FROM ledger AS l 
        LEFT JOIN `group` AS g ON g.GroupID=l.GroupID
        WHERE l.CompanyID='$CompanyId'");
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
