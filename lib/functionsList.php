<?php

function getLedgerList($companyId, $search, $start, $end) {
    $sql = "SELECT l.LedgerId, CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) AS Name, g.`Name` AS 'group_name', l.Address, 
        (CASE WHEN l.IsActive=1 THEN 'Yes' ELSE 'No' END) AS 'isActive',
        g.GroupId

        FROM ledger AS l 
        LEFT JOIN `group` AS g ON g.GroupId=l.GroupId
        WHERE l.CompanyId='$companyId' ORDER BY l.`Code` DESC LIMIT $start, $end";
    $result = query($sql);


    return $result;
}

function getVoucherList($companyId, $search, $start, $end) {
    $sql = "SELECT vt.VoucherTypeId, vt.`Name`, mv.`Name` AS 'mainVoucher', mv.Id

        FROM voucher_type AS vt 
        LEFT JOIN mainvoucher AS mv ON mv.Id=vt.MainVoucherId
        WHERE vt.CompanyId='$companyId' ORDER BY vt.`Name` LIMIT $start, $end";
    $result = query($sql);


    return $result;
}

function getGroupList($companyId, $search, $start, $end) {
    $sql = "SELECT g.GroupId, g.`Name`, g.UnderGroupId,
            (CASE WHEN gs.`Name` IS NULL THEN 'Primary' ELSE gs.`Name` END) AS 'Group' 
            FROM `group` AS g
            LEFT JOIN `group` AS gs ON gs.GroupId=g.UnderGroupId
            WHERE g.CompanyId='$companyId' #AND gs.`Name` IS NOT NULL
            ORDER BY g.`Name` ASC LIMIT $start, $end";
    $result = query($sql);


    return $result;
}

function saveReceiveVoucher($employeeId, $companyId) {
    global $mysqli;


    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');
    $partyLedger = getParam('partyLedger');

    $ledgerId = getParam('ledgerId');
    $amount = getParam('amount');


    if ($mode == 'new') {

        try {
            $mysqli->autocommit(FALSE);
            $transactionId = maxTransactionId();
            $TranNo = OrderNo($transactionId);
            $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '$TranNo', '$date', '$note', '$voucherType', '$employeeId', NOW(), '$companyId')";

            query($transaction);
            $transactionId = insertLastId();

            foreach ($ledgerId as $key => $value) {
                $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount) 
                VALUES('$transactionId', '$ledgerId[$key]', '1', '$amount[$key]')";
                query($transactionDr);

                //query("UPDATE ledgerbalance SET Dr=Dr+$DebitAmount[$key] WHERE LedgerId=$ledgerId[$key]");

                $total+=$amount[$key];
                //echo "<br>";
            }

            $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount) 
            VALUES('$transactionId', '$partyLedger', '2', '$total')";
            //query("UPDATE ledgerbalance SET Cr=Cr+$total WHERE LedgerId=$ledgerId[$key]");
            query($transactionCr);

            $mysqli->commit();
        } catch (Exception $exc) {
            $mysqli->rollBack();
            echo "Fallo: " . $exc->getMessage();
        }


        $mysqli->close();
    } else {
        
    }
}

function savePaymentVoucher($employeeId, $companyId) {
    global $mysqli;


    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');
    $partyLedger = getParam('partyLedger');

    $ledgerId = getParam('ledgerId');
    $amount = getParam('amount');


    if ($mode == 'new') {

        try {
            $mysqli->autocommit(FALSE);
            $transactionId = maxTransactionId();
            $TranNo = OrderNo($transactionId);
            $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '$TranNo', '$date', '$note', '$voucherType', '$employeeId', NOW(), '$companyId')";

            query($transaction);
            $transactionId = insertLastId();

            foreach ($ledgerId as $key => $value) {
                $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount) 
                VALUES('$transactionId', '$ledgerId[$key]', '1', '$amount[$key]')";
                query($transactionDr);

                //query("UPDATE ledgerbalance SET Dr=Dr+$DebitAmount[$key] WHERE LedgerId=$ledgerId[$key]");

                $total+=$amount[$key];
                //echo "<br>";
            }

            $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount) 
            VALUES('$transactionId', '$partyLedger', '2', '$total')";
            //query("UPDATE ledgerbalance SET Cr=Cr+$total WHERE LedgerId=$ledgerId[$key]");
            query($transactionCr);

            $mysqli->commit();
        } catch (Exception $exc) {
            $mysqli->rollBack();
            echo "Fallo: " . $exc->getMessage();
        }


        $mysqli->close();
    } else {
        
    }
}

function saveCollectionVoucher($employeeId, $companyId) {
    global $mysqli;


    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');
    $partyLedger = getParam('partyLedger');

    $ledgerId = getParam('ledgerId');
    $principal = getParam('principal');
    $interest = getParam('interest');
    $chk = getParam('chk');


    if ($mode == 'new') {

        try {
            $mysqli->autocommit(FALSE);

            $maxId = maxTransactionId();
            $TranNo = OrderNo($maxId);

            $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '$TranNo', '$date', '$note', '$voucherType', '$employeeId', NOW(), '$companyId')";

            query($transaction);
            $transactionId = insertLastId();

            foreach ($chk as $key => $value) {
                $CreditAmount = $principal[$key] + $interest[$key];
                $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount) 
                VALUES('$transactionId', '$ledgerId[$key]', '1', '$CreditAmount')";
                query($transactionDr);
                $transactionDetailsId = insertLastId();

                $collectionDetails = "INSERT INTO collection_loan_details(TransactionDetailsId, TransactionId, LedgerId, PrincipalAmount, InterestAmount, Total) 
                VALUES('$transactionDetailsId', '$transactionId', '$ledgerId[$key]', '$principal[$key]', '$interest[$key]', '$CreditAmount')";
                query($collectionDetails);

                //query("UPDATE ledgerbalance SET Dr=Dr+$DebitAmount[$key] WHERE LedgerId=$ledgerId[$key]");

                $total+=$CreditAmount;
                //echo "<br>";
            }

            $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount) 
            VALUES('$transactionId', '$partyLedger', '2', '$total')";
            //query("UPDATE ledgerbalance SET Cr=Cr+$total WHERE LedgerId=$ledgerId[$key]");
            query($transactionCr);

            $mysqli->commit();
        } catch (Exception $exc) {
            $mysqli->rollBack();
            echo "Fallo: " . $exc->getMessage();
        }


        $mysqli->close();
    } else {
        
    }
}

function saveSavingCollectionVoucher($employeeId, $companyId) {
    global $mysqli;

    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');
    $partyLedger = getParam('partyLedger');

    $ledgerId = getParam('ledgerId');
    $saving = getParam('credit');
    $chk = getParam('chk');


    if ($mode == 'new') {

        try {
            $mysqli->autocommit(FALSE);

            $maxId = maxTransactionId();
            $TranNo = OrderNo($maxId);

            $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '$TranNo', '$date', '$note', '$voucherType', '$employeeId', NOW(), '$companyId')";

            query($transaction);
            $transactionId = insertLastId();

            foreach ($chk as $key => $value) {
                $CreditAmount = $saving[$key];
                $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, CreditAmount) 
                VALUES('$transactionId', '$ledgerId[$key]', '1', '$CreditAmount')";
                query($transactionDr);
                $transactionDetailsId = insertLastId();

                $collectionDetails = "INSERT INTO collection_saving_details(TransactionDetailsId, TransactionId, LedgerId, SavingAmount) 
                VALUES('$transactionDetailsId', '$transactionId', '$ledgerId[$key]', '$saving[$key]')";
                query($collectionDetails);

                //query("UPDATE ledgerbalance SET Dr=Dr+$DebitAmount[$key] WHERE LedgerId=$ledgerId[$key]");

                $total+=$CreditAmount;
                //echo "<br>";
            }

            $transactionCr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount) 
            VALUES('$transactionId', '$partyLedger', '2', '$total')";
            //query("UPDATE ledgerbalance SET Cr=Cr+$total WHERE LedgerId=$ledgerId[$key]");
            query($transactionCr);

            $mysqli->commit();
        } catch (Exception $exc) {
            $mysqli->rollBack();
            echo "Fallo: " . $exc->getMessage();
        }


        $mysqli->close();
    } else {
        
    }
}

function saveJournalVoucher($employeeId, $companyId) {
    global $mysqli;


    $mode = getParam('mode');
    $ref = getParam('ref');
    $date = getParam('date');
    $note = getParam('note');
    $voucherType = getParam('voucherType');

    $ledgerId = getParam('ledgerId');
    $Debit = getParam('Debit');
    $Credit = getParam('Credit');


    if ($mode == 'new') {

        try {
            $mysqli->autocommit(FALSE);
            $transactionId = maxTransactionId();
            $TranNo = OrderNo($transactionId);
            $transaction = "INSERT INTO `transaction`(Ref, TranNo, TranDate, Note, VoucherTypeId, CreatedBy, CreatedOn, CompanyId) 
            VALUES('$ref', '$TranNo', '$date', '$note', '$voucherType', '$employeeId', NOW(), '$companyId')";

            query($transaction);
            $transactionId = insertLastId();
            $tranType = 1;
            
            foreach ($ledgerId as $key => $value) {
                $transactionDr = "INSERT INTO transactiondetail(TransactionId, LedgerId, TransactionType, DebitAmount, CreditAmount) 
                VALUES('$transactionId', '$ledgerId[$key]', '$tranType', '$Debit[$key]', '$Credit[$key]')";
                query($transactionDr);
                $tranType = 2;
            }

            $mysqli->commit();
        } catch (Exception $exc) {
            $mysqli->rollBack();
            echo "Fallo: " . $exc->getMessage();
        }


        $mysqli->close();
    } else {
        
    }
}

function getCompanyList() {

    $sql = "SELECT co.CompanyId, co.Code, co.`Name`, co.Address1, co.Address2, co.ZipCode, co.Phone, co.Fax, co.Email, co.CurrencySymbol,
            (CASE WHEN co.IsActive='1' THEN 'Yes' ELSE 'No' END)AS 'Active'
            FROM company AS co 
            ORDER BY co.`Name`";
    $result = query($sql);

    return $result;
}

function getUserList($companyId) {

    $sql = "SELECT UserTableId, c.`Name`, CONCAT(ut.UserName,'->',e.FirstName, ' ', e.LastName) AS UserName, 
    (CASE WHEN ut.IsActive=1 THEN 'Yes' ELSE 'No' END) AS IsActive, 
    c.Email, Phone, ul.`Name` AS UName
    FROM user_table ut
    INNER JOIN employee e ON e.EmployeeId=ut.EmployeeId
    LEFT JOIN company c ON c.CompanyId=e.CompanyId
    LEFT JOIN user_level ul ON ul.UserLevelId=ut.UserLevelId
    WHERE e.CompanyId='$companyId' ORDER BY ut.UserName";

    $result = query($sql);

    return $result;
}

function agreeMentList() {
    $result = array(
        array('1', 'Product Fixed'),
        array('2', 'Budget Fixed'),
        array('3', 'Price Fixed')
    );
    return $result;
}

function OrderNo($OrderId) {
    if (strlen($OrderId) == 1) {
        $OrderNo = date('Y') . '00000' . $OrderId;
    } elseif (strlen($OrderId) == 2) {
        $OrderNo = date('Y') . '0000' . $OrderId;
    } elseif (strlen($OrderId) == 3) {
        $OrderNo = date('Y') . '000' . $OrderId;
    } elseif (strlen($OrderId) == 4) {
        $OrderNo = date('Y') . '00' . $OrderId;
    } elseif (strlen($OrderId) == 5) {
        $OrderNo = date('Y') . '0' . $OrderId;
    } elseif (strlen($OrderId) == 6) {
        $OrderNo = date('Y') . $OrderId;
    }

    return $OrderNo;
}

function getLedgerCombo($companyId) {
    $sql = "SELECT l.LedgerId, CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`)
        FROM ledger l 
        INNER JOIN `group` g ON g.GroupId=l.GroupId
        WHERE l.CompanyId='$companyId' #AND g.GroupVoucherID<>2";
    return rs2array($sql);
}

function getLedgerVoucherList($companyId) {
    $sql = "SELECT l.LedgerId, CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) AS Name
        FROM ledger l 
        INNER JOIN `group` g ON g.GroupId=l.GroupId
        WHERE l.CompanyId='$companyId' #AND g.GroupVoucherID<>2";
    return query($sql);
}

function getSalesProductList($companyId) {
    $sql = "SELECT p.ProductId, CONCAT(IFNULL(p.`Code`,''),' ',p.`Name`, ' ', IFNULL(u.`Name`,'')) AS 'Name'
        FROM product p
        LEFT JOIN unit u ON u.UnitId=p.UnitId
        WHERE p.CompanyId='$companyId' ";
    return query($sql);
}

function getVoucherType($companyId, $MainVoucherId) {
    $sql = "SELECT VoucherTypeId, `Name` 
        FROM voucher_type WHERE CompanyId='$companyId' AND MainVoucherId='$MainVoucherId'";
    return rs2array($sql);
}

function getPartyLedger($CompanyId) {
    $sql = "SELECT l.LedgerId, CONCAT(l.`Code`,' ',l.`Name`) AS Name
        FROM ledger l 
        INNER JOIN `group` g ON g.GroupId=l.GroupId
        WHERE l.CompanyId='$CompanyId' #AND g.GroupVoucherID=1";
    return rs2array($sql);
}

function getCustomercount($searchId, $companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM customer
            WHERE CompanyId='$companyId' AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getDisbusCount($companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM loan_disburse
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getProductGroupCount($companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM product_group
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getProductCount($companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM product
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getSavingsCount($searchId, $companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM savings
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getGroupCount($searchId, $companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM `group`
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getLedgerCount($searchId, $companyId) {
    $sql = "SELECT COUNT(*) AS count
            FROM ledger
            WHERE CompanyId='$companyId' #AND Name LIKE '$searchId%'";
    $result = findValue($sql);

    return $result;
}

function getCustomerByemployee($CompanyId, $EmployeeId, $collectionDay) {
    $res = $collectionDay == '' ? '' : " AND ld.CollectionDayId='$collectionDay'";
    $sql = "SELECT CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) AS Name, PrincipalAmount, InterestAmount, Installment, 
        ld.CustomerId, l.LedgerId, c.`Name` AS cName, ld.`Code`
        
        FROM loan_disburse ld 
        INNER JOIN ledger l ON l.LedgerId=ld.LedgerId 
        LEFT JOIN customer c ON c.CustomerId=ld.CustomerId
        WHERE ld.CompanyId='$CompanyId' AND ld.IsActive=1 AND ld.CollectById='$EmployeeId'
        $res
        ORDER BY c.`Code`";
    $result = query($sql);
    return $result;
}

function getSavingCustomerByemployee($CompanyId, $EmployeeId, $collectionDay) {
    $res = $collectionDay == '' ? '' : " AND s.CollectionDayId='$collectionDay'";
    $sql = "SELECT CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) AS `Name`, SavingsAmount,
        s.CustomerId, l.LedgerId, c.`Name` AS cName, s.`Code`, s.CollectionAmount
        
        FROM savings s 
        INNER JOIN ledger l ON l.LedgerId=s.LedgerId 
        LEFT JOIN customer c ON c.CustomerId=s.CustomerId
        WHERE s.CompanyId='$CompanyId' AND s.IsActive=1 AND s.CollectById='$EmployeeId'
        $res
        ORDER BY c.`Code`";
    $result = query($sql);
    return $result;
}

function maxCustomerId() {
    $sql = "SELECT IFNULL(MAX(CustomerId),0)+1 FROM customer";
    $result = findValue($sql);
    return $result;
}

function maxSavingId() {
    $sql = "SELECT IFNULL(MAX(SavingsId),0)+1 FROM savings";
    $result = findValue($sql);
    return $result;
}

function maxDisburseId() {
    $sql = "SELECT IFNULL(MAX(LoanDisburseId),0)+1 FROM loan_disburse";
    $result = findValue($sql);
    return $result;
}

function maxLedgerId() {
    $sql = "SELECT IFNULL(MAX(LedgerId),0)+1 FROM ledger";
    $result = findValue($sql);
    return $result;
}

function maxTransactionId() {
    $sql = "SELECT IFNULL(MAX(TransactionId),0)+1 FROM transaction";
    $result = findValue($sql);
    return $result;
}

function getDataGrid($CompanyId, $search, $start, $end) {
    //$res = $search == "" ? " " : " AND `Name` LIKE '%$search%'";
    //$limt = $search == '' ? " LIMIT 0, 200" : '';

    $sql = "SELECT CustomerId, `Name`, `Code`, PresentAddress,
            Cell, Occupation, GuarantorName, AdmitDate, GuarantorAge, Relation,
            PermanentAddress, Age, GuarantorAddress, FatherSpouse, PicturePath
            FROM customer c
            WHERE c.CompanyId='$CompanyId'
            ORDER BY CustomerId DESC LIMIT $start, $end";
    $result = query($sql);



    return $result;
}

function getDistrictAll() {
    $sql = "SELECT DISTRICT_ID, DISTRICT_NAME FROM district ORDER BY DISTRICT_NAME";
    $result = query($sql);

    return $result;
}

function saveCompany($companyDTO) {


    try {
        $sql = "INSERT INTO company(`Name`, Code, Address1, Address2, CountryID, ZipCode, Phone, Fax, Email, IsActive, BooksBeginingFrom, FinancialYearFrom, CurrencySymbol, CreatedBy, CreatedDate) 
        VALUES('$companyDTO->CompanyName', '$companyDTO->Code', '$companyDTO->Address1', '$companyDTO->Address2', '$companyDTO->CountryID', '$companyDTO->ZipCode', '$companyDTO->Phone', '$companyDTO->Fax', '$companyDTO->Email', '$companyDTO->IsActive', '$companyDTO->BooksBeginningFrom', '$companyDTO->FinancialYearFrom', '$companyDTO->CurrencySymbol', 'admin', CURDATE() )";

        query($sql);

        $company_id = insertLastId();
        $pass = md5($companyDTO->Code);

        $sqlEmployee = "INSERT INTO employee(CompanyId, CARD_NO, FIRST_NAME, LAST_NAME, CREATED_BY, CREATED_DATE) 
                    VALUES('$company_id', '$companyDTO->Code', '$companyDTO->Code', '$companyDTO->Code', 'admin', NOW())";
        query($sqlEmployee);
        $employeeId = insertLastId();

        $sql_user = "INSERT INTO master_user(USER_NAME, USER_PASS, EMPLOYEE_ID, USER_LEVEL_ID, ROUTE_ID, CREATED_BY, COMPANY_ID) 
                    VALUES('$companyDTO->Code', '$pass', '$employeeId', '100', 'admin', 'admin', '$company_id')";
        query($sql_user);


        query("CALL Insert_Primary_Ledger($company_id)");
    } catch (PDOException $e) {
        echo "Error " . $e->errorInfo();
    }
}

function getCountryList() {
    $sql = "SELECT CountryID, Country_Name from country ORDER BY Country_Name";
    return rs2array($sql);
}

function getSavingList($companyId, $search, $start, $end) {
    //$res = $search == "" ? " " : " AND `Name` LIKE '%$search%'";
    //$limt = $search == '' ? " LIMIT 0, 200" : '';

    $sql = "SELECT c.`Name` AS CNmae, CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) LName, 
    st.`Name` AS TName, s.CollectionAmount,
    CONCAT(e.FirstName,' ',e.LastName) AS empName, s.SavingsId,
    (CASE WHEN s.IsActive=1 THEN 'Yes' ELSE 'No' END)AS IsActive
    
    FROM savings s
    INNER JOIN saving_type st ON st.SavingTypeId=s.SavingTypeId
    INNER JOIN customer c ON c.CustomerId=s.CustomerId
    INNER JOIN ledger l ON l.LedgerId=s.LedgerId
    INNER JOIN employee e ON e.EmployeeId=s.CollectById
    WHERE s.CompanyId='$companyId'
    ORDER BY l.`Code` DESC LIMIT $start, $end";

    $result = query($sql);
    return $result;
}

function getLoanDisburseList($companyId, $search, $start, $end) {
    $sql = "SELECT LoanDisburseId, CONCAT(IFNULL(l.`Code`,''),' ',l.`Name`) AS ledgerName, 
        DATE_FORMAT(ld.Date,'%e-%b-%Y') AS Date, 
        LoanAmount, LoanTerm, ld.`Code`,
        PreviousLoanAmount, InterestRate, PrincipalAmount, Installment, InterestAmount,
        Guarantor, CollectById, LoanTypeId, CollectionTypeId, 
        (CASE WHEN ld.IsActive=1 THEN 'Yes' ELSE 'No' END)AS IsActive, c.`Name` CName, 
        CONCAT(e.FirstName,' ',e.LastName) AS empName
        FROM loan_disburse ld
        INNER JOIN ledger l ON l.LedgerId=ld.LedgerId
        LEFT JOIN customer c ON c.CustomerId=ld.CustomerId
        LEFT JOIN employee e ON e.EmployeeId=ld.CollectById
        WHERE ld.CompanyId='$companyId' ORDER BY ld.LoanDisburseId DESC LIMIT $start, $end";
    return query($sql);
}

function getProductGroupList($companyId, $search, $start, $end) {
    $sql = "SELECT pg.ProductGroupId, pg.`Name`, upg.`Name` 'Under', upg.UnderId 
    FROM product_group pg
    LEFT JOIN product_group upg ON upg.ProductGroupId=pg.UnderId
    WHERE pg.CompanyId='$companyId' ORDER BY pg.`Name` LIMIT $start, $end";
    return query($sql);
}

function getProductList($companyId, $search, $start, $end) {
    $sql = "SELECT p.ProductId, p.`Name`, pg.`Name` 'Under', 
    pg.UnderId, u.`Name` AS 'UnitName'
    FROM product p
    LEFT JOIN product_group pg ON pg.ProductGroupId=p.ProductGroupId
    LEFT JOIN unit u ON u.UnitId=p.UnitId
    WHERE p.CompanyId='$companyId' ORDER BY p.`Name` LIMIT $start, $end";
    return query($sql);
}

function getUnitList($companyId, $search, $start, $end) {
    $sql = "SELECT UnitId, `Name`, DecimalPlaces
    FROM unit u 
    WHERE u.CompanyId='$companyId' ORDER BY u.`Name` LIMIT $start, $end";
    return query($sql);
}

function getDailyCollectionList($companyId) {
    $sql = "SELECT t.CreatedBy, t.CreatedOn, v.`Name`

        FROM `transaction` t
        LEFT JOIN vouchertype v ON v.Id=t.VoucherTypeId
        WHERE t.CompanyId='$companyId' ORDER BY t.TransactionId DESC";
    return query($sql);
}

function getOPStockList($companyId) {
    $sql = "SELECT s.`Name`, ivd.Qty, ivd.Rate, ivd.TransactionId
    FROM `transaction` t
    INNER JOIN inventorydetail ivd ON ivd.TransactionId=t.TransactionId
    INNER JOIN stockitem s ON s.StockItemID=ivd.ProductId
    WHERE Ref='Opening' AND t.CompanyId='$CompanyId'";
    return query($sql);
}

function getDisburseById($CompanyId, $searchId) {
    $sql = "SELECT *

        FROM loan_disburse ld
        WHERE LoanDisburseId='$searchId' AND ld.CompanyId='$CompanyId'";
    return find($sql);
}

function insertLastId() {
    global $mysqli;

    $id = mysqli_insert_id($mysqli);

    return $id;
}

function getLadgerByCompanyId($companyId) {
    return rs2array("SELECT LedgerId,`Name` FROM ledger WHERE CompanyId='$companyId' ORDER BY `Name`");
}

function getCustomerByCompanyId($companyId) {
    return rs2array("SELECT CustomerId, `Name`, `Code` FROM customer 
            WHERE CompanyId='$companyId' ORDER BY `Name`");
}

function getSavingByCompanyId($companyId) {
    return rs2array("SELECT SavingTypeId,`Name` FROM `saving_type` #WHERE CompanyId='$companyId';");
}

function getEmployeeByCompanyId($companyId) {
    $sqlEmployee = "SELECT emp.employeeId, emp.CardNo, emp.FirstName, cmp.Name, 
    emp.DesignationId, CONCAT(e.FirstName,' ',e.LastName) AS nextPers, emp.email, d.`Name` AS DName,
    emp.LastName, r.`Name` AS RName

    FROM employee emp
    INNER JOIN company cmp ON cmp.CompanyId = emp.CompanyId
    LEFT JOIN employee e ON e.EmployeeId = emp.NextApprovalId
    LEFT JOIN role r ON r.RoleId=emp.RoleId
    LEFT JOIN designation d ON d.DesignationId=emp.DesignationId
    WHERE emp.CompanyId='$companyId' ORDER BY emp.FirstName";

    $stmtEmp = query($sqlEmployee);

    return $stmtEmp;
}

function getEmployeeDetails($empID) {
    //$res = $productList == '' ? '' : " AND cp.ProductId NOT IN ($productList)";
    $sqlEmployeeDetails = "SELECT emp.employeeId, emp.CardNo, emp.FirstName,emp.LastName, 
    emp.MiddleName, emp.SurName, cmp.Name, emp.DesignationId, emp.RoleId, d.`Name` AS DName,
    empl.FirstName AS nextPers,emp.email, emp.Cell, emp.PresentAddress, emp.NextApprovalId
    FROM employee emp
    LEFT JOIN designation d ON d.DesignationId=emp.DesignationId
    LEFT OUTER JOIN company cmp ON cmp.CompanyId = emp.companyId
    LEFT OUTER JOIN employee empl ON empl.EmployeeId = emp.EmployeeId 
    WHERE emp.employeeId='$empID'";
    $stmtEmp = find($sqlEmployeeDetails);

    return $stmtEmp;
}

function getEmployeeByCompanyIdComb($companyId) {

    $sql = "SELECT EmployeeId, CardNo, CONCAT(FirstName,' ',LastName, ' (', d.`Name`, ')') AS EmpName 
    FROM employee e
    LEFT JOIN designation d ON d.DesignationId=e.DesignationId
    WHERE e.CompanyId='$companyId' 
    ORDER BY FirstName";

    $result = rs2array($sql);

    return $result;
}

function getDesignationByCompanyIdComb($companyId) {

    $sql = "SELECT DesignationId, `Name` FROM designation WHERE CompanyId='$companyId' ORDER BY `Name`";

    $result = rs2array($sql);

    return $result;
}

function getEmployeeByCompanyIdCombo($companyId) {
    return rs2array("SELECT EMPLOYEE_ID, FIRST_NAME FROM `employee` WHERE CompanyId='$companyId';");
}

function getLoanTermByCompanyId($companyId) {
    return rs2array("SELECT LoanTypeId,`Name` FROM `loan_type`# WHERE CompanyId='$companyId'");
}

function getCollectionTypeByCompanyId($companyId) {
    return rs2array("SELECT CollectionTypeId, `Name`  FROM collection_type WHERE CompanyId='$companyId';");
}

function getGroupCombo($companyId) {
    return rs2array("SELECT GroupId, `Name` FROM `group` WHERE CompanyId='$companyId' ORDER BY `Name`");
}

function getVoucherMainCombo() {
    return rs2array("SELECT Id, `Name` FROM mainvoucher");
}

function getProductGroupCombo($companyId) {
    return rs2array("SELECT ProductGroupId, `Name` FROM `product_group` WHERE CompanyId='$companyId' ORDER BY `Name`");
}

function getUnitCombo($companyId) {
    return rs2array("SELECT UnitId, `Name` FROM `unit` WHERE CompanyId='$companyId' ORDER BY `Name`");
}

function getUserLevelCombo($companyId) {
    return rs2array("SELECT UserLevelId, `Name` FROM user_level #WHERE CompanyId='$companyId'");
}

function getRoleCompanyIdComb() {

    $result = array(array('1', 'admin'), array('2', 'Staff'), array('3', 'Customer Service'), array('4', 'Accounts'), array('5', 'Reviewer'));

    return $result;
}

$showDataList = array(array('20', '20'), array('50', '50'), array('100', '100'), array('200', '200'));
$weeklist = array(array('1', 'Sat'), array('2', 'Sun'), array('3', 'Mon'), array('4', 'Tue'), array('5', 'Wed'), array('6', 'Thu'), array('7', 'Fri'), array('8', 'Daily'), array('9', 'Monthly'));
?>

