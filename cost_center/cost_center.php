<?php
include '../lib/DbManager.php';
include '../body/header.php';


if (!empty($_REQUEST)) {
    $DTO = new Accounts_Group_DTO();
    $DTO->GroupName = $_REQUEST['GroupName'];
    $DTO->GroupID = $_REQUEST['GroupID'];
    $Group = new Accounts_Group_DAL();
    $Group->SaveGroup($DTO);
}
?>
<h1>Cost Center</h1>
<a href="../../index.php"> Back </a> | <a href="cost_center_create.php"> Create </a>


<table id="dts" class="display">
    <thead>
    <th>Item Name</th>
    <th>Qty</th>
    <th>Rate</th>
    <th>Unit</th>
    <th>Total</th>
</thead>
<tbody>
    <tr>
        <td>f</td>
        <td></td>
        <td>ddd</td>
        <td></td>
        <td></td>
    </tr>
</tbody>
</table>  

<?php include '../Index/footer.php'; ?>