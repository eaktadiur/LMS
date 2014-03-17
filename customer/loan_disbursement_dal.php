<?php

function get_ladger($CompanyId) {
    return $this->rs2array("SELECT LedgerID,`Name` FROM ledger WHERE CompanyID='$CompanyId' ORDER BY `Name`");
}



function get_savings($CompanyId) {
    return $this->rs2array("SELECT SavingTypeId,`Name` FROM `saving_type` WHERE CompanyId='$CompanyId';");
}

function get_loanInfo_byId($CompanyId, $searchId) {
    $sql = "SELECT ld.LedgerId, ld.CustomerId, ld.SavingsId, LoanAmount, ld.LoanTerm, 
        ld.PreviousLoanAmount, ld.InterestRate, LoanTypeId,
        ld.PrincipalAmount, ld.SavingsAmount, ld.InterestAmount, ld.Installment,
        ld.TotalInstallment, ld.Guarantor, ld.EmployeeId, ld.LoanTypeId, 
        ld.CollectionTypeId, ld.IsActive, ld.CompanyID, ld.Code,
        l.`Name` AS ledgerName, l.GroupID

        FROM loan_disbursement ld
        INNER JOIN ledger l ON l.LedgerID=ld.LedgerId
        WHERE loan_disbursementId='$searchId' AND ld.CompanyID='$CompanyId'";
    return $this->find($sql);
}

function getCustomer($CompanyId) {
    return $this->rs2array("SELECT CustomerId, `Name`, `Code` FROM customer 
            WHERE CompanyID='$CompanyId' ORDER BY `Name`");
}

function getGroupList($CompanyId) {
    return $this->rs2array("SELECT GroupID, `Name` FROM `group` WHERE CompanyID='$CompanyId' ORDER BY `Name`");
}

function get_loan_term($CompanyId) {
    return $this->rs2array("SELECT LoanTypeId,`Name` FROM `loan_type` WHERE CompanyId='$CompanyId'");
}

function get_employee($CompanyId) {
    return $this->rs2array("SELECT EMPLOYEE_ID, FIRST_NAME FROM `employee` WHERE CompanyId='$CompanyId';");
}

?>
