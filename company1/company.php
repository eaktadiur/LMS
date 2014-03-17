<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './Company_DAL.php';


$company = new Company_DAL();
$company_list = $company->CompanyList();
?>

<h3><a href="company_create.php">Create</a></h3>
<table id="dts" class="display">
    <thead>
    <th>Company Name</th>
    <th>Address</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Active</th>
    <th>Action</th>
</thead>

<tbody>
    <?php
    while ($row = fetch_object($company_list)) {

        echo "<tr>";
        echo "<td>" . $row->Name . "</td>";
        echo "<td>" . $row->Address1 . "</td>";
        echo "<td>" . $row->Email . "</td>";
        echo "<td>" . $row->Phone . "</td>";
        echo "<td>" . $row->Active . "</td>";
        echo "<td><a href='Company.php'>Delete</td>";
    }
    ?>
</tbody>
</table>





<?php include '../Index/footer.php'; ?>