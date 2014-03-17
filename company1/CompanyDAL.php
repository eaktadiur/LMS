<?php

include_once '../lib/IConnectInfo.php';

class CompanyDAL implements IConnectInfo {

    //Passing values using scope resolution operator
    private $db_type = IConnectInfo::DB_TYPE;
    private $server = IConnectInfo::HOST;
    private $currentDB = IConnectInfo::DBNAME;
    private $user = IConnectInfo::UNAME;
    private $pass = IConnectInfo::PW;
    private $hookup = '';

    public function OpenDb() {
        if (!$this->hookup) {
            $this->hookup = mysql_connect($this->server, $this->user, $this->pass, $this->currentDB) or die("<h2>Can't Connect Database</h2>");
            set('DB_TYPE', $this->db_type);
        }
        mysql_selectdb($this->currentDB) or die("<h2>Database Not Selected</h2>");
    }

    public function CloseDb() {
        mysql_close();
    }

    public function CountryList() {
        $sql = "SELECT CountryID, Country_Name from country ORDER BY Country_Name";
        $this->OpenDb();
        return mysql_query($sql);
        $this->CloseDb();
    }

    public function SaveCompany($companyDTO) {
        $this->OpenDb();

        try {
            $sql = "INSERT INTO company(`Name`, Code, Address1, Address2, CountryID, ZipCode, Phone, Fax, Email, IsActive, BooksBeginingFrom, FinancialYearFrom, CurrencySymbol, CreatedBy, CreatedDate) 
        VALUES('$companyDTO->CompanyName', '$companyDTO->Code', '$companyDTO->Address1', '$companyDTO->Address2', '$companyDTO->CountryID', '$companyDTO->ZipCode', '$companyDTO->Phone', '$companyDTO->Fax', '$companyDTO->Email', '$companyDTO->IsActive', '$companyDTO->BooksBeginningFrom', '$companyDTO->FinancialYearFrom', '$companyDTO->CurrencySymbol', 'admin', CURDATE() )";

            mysql_query($sql);

            $company_id = mysql_insert_id();
            $pass = md5($companyDTO->LoginPass);

            $sql_user = "INSERT INTO master_user(USER_NAME, USER_PASS, EMPLOYEE_ID, USER_LEVEL_ID, ROUTE_ID, CREATED_BY, COMPANY_ID) 
                    VALUES('$companyDTO->LoginId', '$pass', '', '100', 'admin', 'admin', '$company_id')";
            mysql_query($sql_user);


            mysql_query("CALL Insert_Primary_Ledger('$company_id')");
            $this->CloseDb();
            echo "<script>location.replace('../index/index.php')</script>";
        } catch (PDOException $e) {
            echo "Error " . $e->errorInfo();
        }
    }

}
?>


