<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './Accounts_Group_DAL.php';


$Account_Group = new Accounts_Group_DAL();
$group_list = $Account_Group->Group_List($CompanyId);
?>

<h1>Groups</h1>

<a href="../../index.php"> Back </a>|<a href="accounts_group_create.php">Create</a>
<table id="dts" class="ui-state-default">
    <thead>
    <th width="20">SL</th>
    <th>Group Name</th>
    <th>Group Under</th>
    <th>Action</th>
</thead>

<tbody>
    <?php
    while ($row = mysql_fetch_object($group_list)) {

        echo "<tr>";
        echo "<td>" . ++$SL . "</td>";
        echo "<td>" . $row->Group_Name . "</td>";
        echo "<td>" . $row->Under_Group . "</td>";
        echo "<td><a href=''>Delete</td>";
    }
    ?>
</tbody>
</table>  

<?php include '../Index/footer.php'; ?>