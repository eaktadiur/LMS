<?php
include '../lib/DbManager.php';
include '../body/header.php';
include '../accounts/Accounts_Group_DTO.php';
include '../accounts/Accounts_Group_DAL.php';

if (!empty($_REQUEST)) {
    $DTO = new Accounts_Group_DTO();
    $DTO->GroupName = $_REQUEST['GroupName'];
    $DTO->GroupID = $_REQUEST['GroupID'];
    $Group = new Accounts_Group_DAL();
    $Group->SaveGroup($DTO);
}
?>
<h1>Stock Groups</h1>
<a href="../../index.php"> Back to Index </a> <br>


<?php include '../Index/footer.php'; ?>