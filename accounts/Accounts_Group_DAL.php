<?php

class Accounts_Group_DAL extends DBManager {

    public function Group_List($companyid) {
        $sql = "SELECT  g.`Name` AS 'Group_Name', 
        (CASE WHEN gs.`Name` IS NULL THEN 'Primary' ELSE gs.`Name` END) AS 'Under_Group' 
        FROM `group` AS g
        LEFT JOIN `group` AS gs ON gs.GroupID=g.UnderGroupID
        WHERE g.CompanyID='$companyid' ORDER BY g.GroupID";

        return $this->query($sql);
    }

    public function Groups_List($company) {
        $sql = "SELECT GroupID, `Name` FROM `group` WHERE CompanyID='$company' ORDER BY `Name`";
        return $this->query($sql);
    }

    public function Group_Save($companyid) {
        $sth = $this->db->prepare("INSERT INTO `group`(`Name`, UnderGroupID, CompanyID, CreatedBy, CreatedDate) VALUES(:Name, :UnderGroupId, :CompanyID, :CreateBy, :CurrentDate)");
        $sth->execute(array(
            ':Name' => $_POST['GroupName'],
            ':UnderGroupId' => $_POST['GroupID'],
            ':CompanyID' => $companyid,
            ':CreateBy' => 1,
            ':CurrentDate' => 'CURDATE()'
        ));
    }

}

?>
