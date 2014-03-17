<?php

class group extends DBManager {

    public function getDataGrid($offset, $rows, $search, $CompanyId) {
        $result = array();
        $result["total"] = $this->count($search, $CompanyId);

        $res = $search == "" ? " " : " WHERE DISTRICT_NAME LIKE '%$search%'";
        $limt = $search == '' ? " LIMIT $offset, $rows" : '';

        $sql = "SELECT g.GroupID, g.`Name`, g.UnderGroupID,
            (CASE WHEN gs.`Name` IS NULL THEN 'Primary' ELSE gs.`Name` END) AS 'Group' 
            FROM `group` AS g
            LEFT JOIN `group` AS gs ON gs.GroupID=g.UnderGroupID
            WHERE g.CompanyID='$CompanyId' AND g.`Name`!='Primary' 
            ORDER BY `Group` DESC $limt";
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

        $rs = $this->query("SELECT count(*) FROM `group` AS g
        LEFT JOIN `group` AS gs ON gs.GroupID=g.UnderGroupID
        WHERE g.CompanyID='$CompanyId'");
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
