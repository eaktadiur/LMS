<?php

class Accounts_Ledger_DAL extends DBManager {

    public function SaveLedger() {
        $db = new DBManager();
        $db->Open();
        try {

            $sql = "INSERT INTO accounts_group(GroupName, CreatedBy) VALUES('$DTO->GroupName', '$DTO->GroupID')";
            mysql_query($sql);
        } catch (Exception $exc) {
            echo $exc->getMessage();
        }


        $db->Close();
    }

    public function LedgerList($companyid) {
        $sql = "SELECT l.`Name` AS 'ledger_name', g.`Name` AS 'group_name', l.Address, 
        (CASE WHEN l.IsActive=1 THEN 'Yes' ELSE 'No' END) AS 'isActive'

        FROM ledger AS l 
        LEFT JOIN `group` AS g ON g.GroupID=l.GroupID
        WHERE l.CompanyID='$companyid'";

        return $this->query($sql);
    }

    public function GroupComboList() {
        $db = new DBManager();
        $db->Open();
        $sql = "SELECT GroupID, `Name` FROM `group` WHERE CompanyID=1";
        $result = mysql_query($sql);
        $db->Close();

        echo "<select name='group'>";
        echo "<option value=''></option>";
        while ($rows = mysql_fetch_object($result)) {
            echo "<option value='$rows->GroupID'>$rows->Name</option>";
        }
        echo "</select>";
    }

}

?>
