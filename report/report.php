<?php

function getPendingCustomerByDate($companyId, $date, $collectionDayId) {
    $result = query("CALL collectionPendingList('$date', '$collectionDayId', $companyId);");
    return $result;
}

function dayBook($fromDate, $toDate, $CompanyId) {


    $sql = "SELECT t.TransactionId, DATE_FORMAT(t.TranDate,'%e-%b %Y') AS TranDate, l.`Name`, 
            vt.`Name` AS 'voucherType', t.TranNo, td.DebitAmount, td.CreditAmount, mv.link
            FROM `transaction` t
            INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
            LEFT JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
            LEFT JOIN ledger l ON l.LedgerID=td.LedgerId
            LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
            WHERE t.CompanyId='$CompanyId' AND td.TransactionType=2
            AND t.TranDate BETWEEN '$fromDate' AND '$toDate'
            GROUP BY t.TransactionId ORDER BY t.TranDate DESC";
    $result = query($sql);

    return $result;
}

function Balance_Sheet($companyid) {
    $sql = "SELECT g.`Name` AS 'group_name', g.GroupID, 
        (SUM(CASE WHEN td.DebitAmount IS NULL THEN 0 ELSE td.DebitAmount END)+(CASE WHEN l.OpenningCr IS NULL THEN 0 ELSE l.OpenningDr END)) AS 'Dr', 
        (SUM(CASE WHEN td.CreditAmount IS NULL THEN 0 ELSE td.CreditAmount END)+(CASE WHEN l.OpenningCr IS NULL THEN 0 ELSE l.OpenningCr END)) AS 'Cr',

        ((SUM(CASE WHEN td.DebitAmount IS NULL THEN 0 ELSE td.DebitAmount END)+(CASE WHEN l.OpenningCr IS NULL THEN 0 ELSE l.OpenningDr END))- 
        (SUM(CASE WHEN td.CreditAmount IS NULL THEN 0 ELSE td.CreditAmount END)+(CASE WHEN l.OpenningCr IS NULL THEN 0 ELSE l.OpenningCr END))) AS 'amount'

        FROM `transaction` AS t
        INNER JOIN transactiondetail AS td ON td.TransactionId=t.TransactionId
        INNER JOIN ledger AS l ON l.LedgerID=td.LedgerId
        LEFT JOIN `group` AS g ON g.GroupID=l.GroupID
        WHERE g.CompanyID='$companyid' AND g.GroupNatureID=1 
        OR g.GroupNatureID=2 
        GROUP BY g.GroupNatureID ORDER BY g.`Name`";

    return $this->query($sql);
}

function Group_Account_summery($groupid, $companyid) {
    return query("CALL groupBalanceList($groupid, $companyid);");
}

function ledgerSummery($ledgerId) {
    $sql = "SELECT td.LedgerId, l.`Name`, DATE_FORMAT(t.TranDate,'%M') AS 'Month',
        DATE_FORMAT(t.TranDate,'%c') AS MonthId,
        SUM(IFNULL(td.DebitAmount,0)) AS 'Debit',
        SUM(IFNULL(td.CreditAmount,0)) AS 'Credit'

        FROM `transaction` AS t
        INNER JOIN transactiondetail AS td ON td.TransactionId=t.TransactionId
        INNER JOIN ledger AS l ON l.LedgerID=td.LedgerId
        INNER JOIN voucher_type vt ON vt.VoucherTypeId=td.TransactionType

        WHERE l.LedgerId='$ledgerId' 
        GROUP BY DATE_FORMAT(t.TranDate,'%b') ORDER BY l.`Name`";

    return query($sql);
}

function cashFlowMonthly($companyId){
    $sql = "SELECT DATE_FORMAT(t.TranDate,'%M') AS 'Month', 
    l.`Name`, SUM(IFNULL(DebitAmount,0))AS Dr,
    SUM(IFNULL(CreditAmount,0)) AS Cr

    FROM transactiondetail td
    INNER JOIN ledger l ON l.LedgerId=td.LedgerId
    INNER JOIN `group` g ON g.GroupId=l.GroupId
    INNER JOIN `transaction` t ON t.TransactionId=td.TransactionId
    WHERE t.CompanyId='$companyId' AND g.Alias='Cash in hand'
    GROUP BY DATE_FORMAT(t.TranDate,'%b')";

    return query($sql);
}

function inventoryVoucherView($searchId, $CompanyId) {
    $sql = "SELECT Ref, DATE_FORMAT(TranDate,'%e-%b %Y') AS TranDate, Note, t.VoucherTypeId, vt.`Name`
        FROM `transaction` t 
        LEFT JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
        WHERE t.TransactionId='$searchId' AND t.CompanyId='$CompanyId'";

    return find($sql);
}

function voucherDetails($searchId) {
    $sql = "SELECT l.`Name`, td.DebitAmount, td.CreditAmount
            
            FROM transactiondetail td
            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
            LEFT JOIN voucher_type vt ON vt.VoucherTypeId=td.TransactionType
            WHERE td.TransactionId='$searchId' AND td.TransactionType=1";

    return query($sql);
}

function inventoryDetails($searchId) {
    $sql = "SELECT si.`Name`, inv.Qty, inv.Rate, (IFNULL(inv.Qty,0)*IFNULL(inv.Rate,0)) AS 'total',
            u.`Name` AS 'unit'
            FROM inventorydetail inv
            INNER JOIN stockitem si ON si.StockItemID=Inv.ProductId
            LEFT JOIN unit u ON u.UnitID=si.UnderUnitId
            WHERE inv.TransactionId='$searchId';";

    return $this->query($sql);
}

function dayBookCount($fromDate, $toDate, $CompanyId) {
    $res = $search == "" ? '' : " WHERE DISTRICT_NAME LIKE '%$search%'";

    $rs = $this->query("SELECT count(*) FROM `transaction` t
                INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
                LEFT JOIN vouchertype vt ON vt.id=t.VoucherTypeId
                LEFT JOIN ledger l ON l.LedgerID=td.LedgerId
                LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
                WHERE t.CompanyId='$CompanyId' AND td.TransactionType=2
                AND t.TranDate BETWEEN '$fromDate' AND '$toDate'");
    $row = fetch_row($rs);

    return $row[0];
}

function transactionDetails($offset, $rows, $ledgerId, $CompanyId) {

    $sql = "SELECT DATE_FORMAT(t.TranDate,'%e-%b %Y') AS TranDate ,  
            l.`Name`, vt.`Name` AS 'VoucherType', t.TranNo, DebitAmount, 
            CreditAmount, mv.link, t.TransactionId
            FROM `transaction` t
            INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
            INNER JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
            LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
            WHERE t.CompanyId='$CompanyId' AND td.LedgerId='$ledgerId' 
            ORDER BY t.TranDate ASC LIMIT $offset, $rows";

    $sql_result = query($sql);

    return $sql_result;
}

function ledgerDetails($offset, $rows, $ledgerId, $CompanyId) {

    $sql = "SELECT  CONCAT(l.`Code`,' ',l.`Name`) AS 'Name', vt.`Name` AS 'VoucherType', t.TranNo, SUM(IFNULL(DebitAmount,0)) AS DebitAmount, 
            SUM(IFNULL(CreditAmount,0)) AS CreditAmount, mv.link, t.TransactionId, SUM(IFNULL(cld.PrincipalAmount,0)) AS PrincipalAmount,
            SUM(IFNULL(cld.InterestAmount,0)) AS InterestAmount
            
            FROM `transaction` t
            INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
            INNER JOIN loan_disburse ld ON ld.LedgerId=td.LedgerId
            INNER JOIN collection_loan_details cld ON cld.TransactionDetailsId=td.TransactionDetailsId
            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
            INNER JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
            LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
            WHERE t.CompanyId='$CompanyId' #AND td.LedgerId='$ledgerId' 
            GROUP BY td.LedgerId ORDER BY l.`Code` ASC";

    $sql_result = query($sql);

    return $sql_result;
}

function ledgerBalance($CompanyId) {

    $sql = "SELECT  ((SUM(IFNULL(DebitAmount,0)))-(SUM(IFNULL(CreditAmount,0)))) AS Balance, 
        l.`Name`, l.LedgerID
        FROM ledger l 
        LEFT JOIN transactiondetail td ON td.LedgerID=l.LedgerId
        LEFT JOIN `transaction` t ON td.TransactionId=t.TransactionId
        LEFT JOIN `group` g ON g.GroupID=l.GroupID
        LEFT JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
        WHERE t.CompanyId='$CompanyId' AND g.GroupNatureID IN (1,2)
        GROUP BY l.LedgerID HAVING Balance<>0
        ORDER BY l.`Name` ASC";
    $ledgerBalance = query($sql);

    return $ledgerBalance;
}

function openingBalanceTrandactionDetails($ledgerId, $CompanyId, $fromDate) {

    $sql = "SELECT  (SUM(DebitAmount)-SUM(CreditAmount)) AS OPBalance 
        FROM `transaction` t
        INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
        INNER JOIN ledger l ON l.LedgerID=td.LedgerId
        WHERE t.CompanyId='$CompanyId' AND td.LedgerId='$ledgerId' AND t.TranDate< '$fromDate'
        GROUP BY l.LedgerID ORDER BY t.TranDate ASC";
    $openingBalance = find($sql);

    return $openingBalance;
}

function partyAccount($ledgerId, $fromDate, $toDate) {
    $sql = "SELECT t.TransactionId, DATE_FORMAT(t.TranDate,'%e-%b %Y') AS TranDate, l.`Name`, 
                vt.`Name` AS 'voucherType', t.TranNo, SUM(IFNULL(td.DebitAmount,0)) AS DebitAmount,
                SUM(IFNULL(td.CreditAmount,0)) AS CreditAmount, mv.link
                FROM `transaction` t
                INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
                INNER JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
                INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
                WHERE td.LedgerId='$ledgerId' AND t.TranDate BETWEEN '$fromDate' AND '$toDate'
                GROUP BY t.TransactionId ORDER BY t.TransactionId ASC";
    return query($sql);
    //return $this->query("CALL partyAccountByLedgerDate($ledgerId, $fromDate, $toDate);");
}

function partyOpeningBalance($ledgerId, $fromDate) {
    $sql = "SELECT t.TransactionId, DATE_FORMAT(t.TranDate,'%e-%b %Y') AS TranDate, l.`Name`, 
                vt.`Name` AS 'voucherType', t.TranNo, SUM(IFNULL(td.DebitAmount,0)) AS DebitAmount,
                SUM(IFNULL(td.CreditAmount,0)) AS CreditAmount, mv.link
                FROM `transaction` t
                INNER JOIN transactiondetail td ON td.TransactionId=t.TransactionId
                INNER JOIN voucher_type vt ON vt.VoucherTypeId=t.VoucherTypeId
                INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                LEFT JOIN mainvoucher mv ON mv.Id=vt.MainVoucherId
                WHERE td.LedgerId='$ledgerId' AND t.TranDate < '$fromDate'
                ORDER BY t.TransactionId ASC";
    return find($sql);
    //return $this->query("CALL partyAccountByLedgerDate($ledgerId, $fromDate, $toDate);");
}

function getAllLedger($CompanyId) {
    $partyLedger = rs2array("SELECT l.LedgerID, l.`Name`
                FROM ledger l 
                INNER JOIN `group` g ON g.GroupID=l.GroupID
                WHERE l.CompanyID='$CompanyId'");
    return $partyLedger;
}

function Stock_item($CompanyId) {
    $sql = "SELECT pg.`Name` AS 'stock_group', (SUM(IFNULL(ide.Qty,0))) AS 'qty', pg.ProductGroupId, 
    (SUM(IFNULL(ide.InTotal,0))) AS 'total', 'group' AS 'type', '' AS 'link' 

    FROM product AS p 
    LEFT JOIN inventorydetail ide ON ide.ProductId=p.ProductId 
    LEFT JOIN product_group AS pg ON pg.ProductGroupId=p.ProductGroupId 
    WHERE ide.CompanyID='$CompanyId' 
    GROUP BY p.ProductGroupId ORDER BY p.`Name`";


    return query($sql);
}

function Stock_item_details($groupId) {
    $sql2 = "SELECT DATE_FORMAT(t.TranDate,'%e-%b %Y') AS TranDate, si.`Name`, u.`Name` AS UnitName,  si.StockItemID,
        (CASE WHEN ide.Qty<=0 THEN ide.Qty ELSE '' END) AS InwordQty,
        ide.Rate,
        (CASE WHEN ide.Qty<=0 THEN ide.Qty ELSE '' END) AS OutwardQty,
        ide.Id, vt.`Name` AS VoucherType,  'item' AS 'type', '' AS 'link'

        FROM stockitem AS si
        LEFT JOIN inventorydetail ide ON ide.ProductId=si.StockItemID
        LEFT JOIN stockgroup AS sg ON sg.StockGroupId=si.StockGroupID
        LEFT JOIN `transaction` t ON t.TransactionId=ide.TransactionId
        LEFT JOIN vouchertype vt ON vt.`Name`=t.VoucherTypeId
        LEFT JOIN unit u ON u.UnitID=si.UnderUnitId
        WHERE si.StockGroupID='$groupId' 
        ORDER BY si.`Name`";

    $sql = "SELECT SUM(IFNULL(ind.Qty,0)) AS 'Qty', 
        SUM(IFNULL(ind.InTotal,0))/SUM(IFNULL(ind.Qty,0)) AS 'Rate',
        si.`Name` AS 'Product', SUM(IFNULL(ind.InTotal,0)) AS InTotal, si.ProductGroupId, 
        si.ProductId, ind.Id, u.`Name`

        FROM inventorydetail ind
        INNER JOIN product si ON si.ProductId=ind.ProductId
        LEFT JOIN unit u ON u.UnitID=si.UnitId
        WHERE si.ProductGroupId='$groupId'
        GROUP BY si.ProductGroupId ORDER BY si.`Name`";


    return query($sql);
}

function hasGroupChild($groupId) {
    $count = findValue("SELECT COUNT(*) FROM `group` WHERE UnderGroupID='$groupId'");
    return $count > 0 ? TRUE : FALSE;
}

function getMonth() {
    $sql = "SELECT `Name`, FromDate, ToDate FROM `month`";
    return query($sql);
}

function getAssetsBalanceSheet($CompanyId) {
    $sql = "SELECT g.GroupID, g.`Name`, gn.GroupNatureName, sub.balance
            FROM `group` g
            INNER JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
            LEFT JOIN (
                SELECT l.GroupID, (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) AS balance
                FROM transactiondetail td
                INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                INNER JOIN `group` g ON g.GroupID=l.GroupID
                WHERE g.GroupNatureID=2 AND l.GroupID IN (0)
            )AS sub ON sub.GroupID=g.GroupID
            WHERE g.CompanyID='$CompanyId' AND UnderGroupID=0 AND g.GroupNatureID=1
            ORDER BY g.`Name`";

    return query($sql);
}

function getLiabilitiesBalanceSheet($CompanyId) {
    $sql = "SELECT g.GroupID, g.`Name`, gn.GroupNatureName, sub.balance
            FROM `group` g
            INNER JOIN groupnature gn ON gn.GroupNatureID=g.GroupNatureID
            LEFT JOIN (
                            SELECT l.GroupID, (SUM(IFNULL(DebitAmount,0))-SUM(IFNULL(CreditAmount,0))) AS balance
                            FROM transactiondetail td
                            INNER JOIN ledger l ON l.LedgerID=td.LedgerId
                            INNER JOIN `group` g ON g.GroupID=l.GroupID
                            WHERE g.GroupNatureID=2 AND l.GroupID IN (0)
            )AS sub ON sub.GroupID=g.GroupID
            WHERE g.CompanyID='$CompanyId' AND UnderGroupID=0 AND g.GroupNatureID=1
            ORDER BY g.`Name`";

    return $this->query($sql);
}

function getLedgerName($ledgerId) {
    return findValue("SELECT `Name` FROM ledger WHERE LedgerID='$ledgerId'");
}

?>
