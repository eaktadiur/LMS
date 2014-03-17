<?php

include '../lib/DbManager.php';
// This is a sample code in case you wish to check the username from a mysql db table

if (isSet($_POST['username'])) {
    $username = $_POST['username'];


    $sql_check = query("SELECT `Code` FROM loan_disburse WHERE `Code`='$username' AND CompanyId='$companyId'");

    if (mysqli_num_rows($sql_check)) {
        echo 'The is <STRONG>' . $username . '</STRONG> is already in use';
    } else {
        echo '<img src="../public/img/accepted.png" align="absmiddle"/>';
    }
}
?>