<?php
include_once '../lib/DbManager.php';
$CompanyList = rs2array(query("SELECT CompanyID, `Name` FROM company ORDER BY `Name`"));
$CompanyCount = findValue("SELECT COUNT(*) FROM company ORDER BY `Name`");
if ($CompanyCount == 0) {
    include '../company/create.php';
    die();
}

$action = 'modules.php';
if (isset($_SESSION['ORG_SCRIPT_NAME']))
    $action = $_SESSION['ORG_SCRIPT_NAME'];

$mess = null;
if (isset($_REQUEST['login_mess']))
    $mess = $_REQUEST['login_mess'];

$dbs = array();
$i = 1;
while (defined("DBNAME_$i")) {
    $dbs[] = array(constant("DBNAME_$i"));
    $i++;
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Login to CMS</title>
        <link rel="stylesheet" href="../common/style.css">
        <!-- Optimize for mobile devices -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
        <script type="text/javascript" src="../public/js/jquery-1.7.2.js"></script>
        <script type="text/javascript" src="../public/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="../public/js/headerScript.js"></script>
        <script src="../public/js/Autocomplete/jquery-ui-autocomplete.js"></script>
        <script src="../public/js/Autocomplete/jquery.select-to-autocomplete.min.js"></script>
        <link rel="stylesheet" type="text/css" href="../jquery-ui/css/ui-lightness/jquery-ui-1.8.16.custom.css"/>

        <script type="text/javascript">
            $(document).ready(function() {
                $('select').selectToAutocomplete();
                $('input.ui-autocomplete-input').focus();
                
            });
        </script>
    </head>

    <style type="text/css">
        .company{width: 95%;}
    </style>

    <body>

        <!-- HEADER -->
        <div id="header">

            <div class="page-full-width cf">
                <div id="login-intro" class="fl">
                    <h1>Login to</h1>
                    <h5>Enter your credentials below</h5>	
                </div> <!-- login-intro -->

                <!-- Change this image to your own company's logo -->
                <!-- The logo will automatically be resized to 39px height. -->
                <a href="#" id="company-branding" class="fr"><img src="../public/images/schoolifylogo.png" alt="Prime Bank" /></a>
            </div> <!-- end full-width -->	
        </div> <!-- end header -->



        <!-- MAIN CONTENT -->
        <div id="content">
            <form action="<?php echo $action ?>" method="POST" id="login-form" class="formValidate" autocomplete="off">
                <fieldset>

                    <p>
                        <label for="CompanyID">Company</label>
                        <?php comboBox('Company', $CompanyList, '', TRUE, 'company required'); ?>
                    </p>
                    <p>
                        <label for="login-username">User Name</label>
                        <input type="text" id="login-username" name='username' class="round full-width-input" placeholder="User Name" />
                    </p>

                    <p>
                        <label for="login-password">Password</label>
                        <input type="password" id="login-password" name='pwd' class="round full-width-input" placeholder="Password"/>
                    </p>


                    <button type='submit' name='login' class="button round blue image-right ic-right-arrow">LOG IN</button>
                    <a href="../company/create.php" class="button round blue">Create Company</a>
                </fieldset>
                <br/><div class="information-box round">Just click on the "LOG IN" button to continue</div>
            </form>

        </div> <!-- end content -->

        <!-- FOOTER -->
        <div id="footer">
            <p>&copy; Copyright 2009-2013 <a href="http://www.schoolifybd.com/" target="_blank">Schoolify</a>. All rights reserved.</p>
        </div> <!-- end footer -->
    </body>
</html>



