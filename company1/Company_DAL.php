<?php

class Company_DAL extends DBManager {

    public function CompanyList() {

        $sql = "SELECT co.CompanyID, co.`Name`, co.Address1, co.Address2, c.Country_Name, co.ZipCode, co.Phone, co.Fax, co.Email, co.CurrencySymbol,
                            (CASE WHEN co.IsActive='1' THEN 'Yes' ELSE 'No' END)AS 'Active'
                            FROM company AS co 
                            LEFT JOIN country AS c ON c.CountryID=co.CountryID
                            ORDER BY co.`Name`";

        return $this->query($sql);
    }

}

?>
