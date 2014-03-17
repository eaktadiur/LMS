<?php
include_once '../lib/DbManager.php';


$mode = getParam('mode');
$searchId = getParam('searchId');
$name = getParam('UserName');

if (isSave()) {

    $Password = getParam('Password');
    $RePassword = getParam('Re-Password');
    $userLevelId = getParam('userLevelId');
    $encPass = md5($Password);


    if ($mode == 'new') {
        $sql = "INSERT INTO user_table(UserName, DisplayName, `Password`, IsActive, CreatedBy, CreatedDate) "
                . "VALUES('admin', 'Admin', '$encPass', '3', '$employeeId', NOW())";
        query($sql);
    } else {
        if ("$Password" == "$RePassword") {
            $sql = "UPDATE user_table SET 
            Password='$encPass',
            UserLevelId='$userLevelId'    
            WHERE UserTableId='$searchId'";
            query($sql);

        } else {
            echo "<script>alert('Password Not Match');</script>";
        }
    }

    echo "<script>location.replace('index.php')</script>";
    exit();
}

$userLevelList = getUserLevelCombo($companyId);
$userEmployeeList = getEmployeeByCompanyIdComb($companyId);

$var = find("SELECT UserName, UserLevelId, EmployeeId  FROM user_table WHERE UserTableId='$searchId'");
include '../body/header.php';
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a> <span class="divider">/</span>
                <a href="#">Add New</a>
            </h3>
        </div>
        <div class="box-content">
            <form class="" action="" method = 'POST'>
                <input type="hidden" name="searchId" value="<?php echo $searchId; ?>"/>
                <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>

                <label for="userLevelIdID">Employee Name: </label>
                <div class="controls">
                    <?php comboBox('employeeName', $userEmployeeList, $var->EmployeeId, TRUE); ?>
                </div>
                <label for="userLevelIdID">User Level: </label>
                <div class="controls">
                    <?php comboBox('userLevelId', $userLevelList, $var->UserLevelId, TRUE); ?>
                </div>

                <label for="UserName">User Name: </label>
                <div class="controls">
                    <input type="text" id="UserName" name="UserName" value="<?php echo $name; ?>"  placeholder="UserName"/>
                </div>

                <label for="Password">Password: </label>
                <div class="controls">
                    <input type="Password" id="Password" name="Password" required placeholder="Password"/>
                </div>

                <label for="Re-Password">Re-Password</label>
                <div class="controls">
                    <input type="Password" id="Re-Password" data-validation-match-match="Password"  name="Re-Password" placeholder="Re-Password"/>
                </div>
                <button type="submit" class="btn btn-primary" name="save" value="save">
                    <i class="icon icon-white icon-save"></i> Submit
                </button>
                <a href="index.php" class="btn btn-primary">
                    <i class="icon-white icon-arrow-left"></i>Go Back</a>

            </form>
        </div>
    </div>
</div>
<?php include '../body/footer.php'; ?>