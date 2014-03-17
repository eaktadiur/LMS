
<?php
include '../lib/DbManager.php';
include '../body/header.php';
include 'Accounts_Ledger_DAL.php';


$LedgerDAL = new Accounts_Ledger_DAL();
$list_Ledger = $LedgerDAL->LedgerList($companyid);
?>

<h1>Ledgers</h1> 

<a href="../../index.php"> Back</a>|<a href="Accounts_Ledger_Create.php"> Create</a> </br>


<table id="dts" class="display">
    <thead>
        <tr>
            <th>Ledger Name</th>
            <th>Under Group</th>
            <th>Ledger Address</th>
            <th>Active</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = fetch_object($list_Ledger)) {

            echo "<tr>";
            echo "<td>" . $row->ledger_name . "</td>";
            echo "<td>" . $row->group_name . "</td>";
            echo "<td>" . $row->Address . "</td>";
            echo "<td>" . $row->isActive . "</td>";
            echo "</tr>";
        }
        ?>        
    </tbody>

</table>


<?php include '../Index/footer.php'; ?>




