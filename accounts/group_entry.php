<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $array = array(
        'group' => 'GroupId',
        "$searchId" => "$employeeId",
        'Name' => "group",
        'UnderGroupId' => 'GroupId',
        'CompanyId' => 'comanyId');

    if ($searchId == '') {
        saveTable($array);
    } else {
        updateTable($array);
    }

    echo "<script>location.replace('group_index.php')</script>";
    exit();
}



$var = find("SELECT * FROM `group` WHERE GroupId='$searchId'");

$customerList = getCustomerByCompanyId($companyId);
$groupCombo = getGroupCombo($companyId);
$employeeList = getEmployeeByCompanyIdComb($companyId);



include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Group New</a>
            </h3>
        </div>
        <div class="box-content">

            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST"autocomplete="off" enctype="multipart/form-data">
                <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
                <input type="hidden" name="ledgerId" value="<?php echo $var->GroupId; ?>"/>
                <input type="hidden" name="comanyId" value="<?php echo $companyId; ?>"/>
                <input type="hidden" name="IsActive" value="1"/>


                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td>Group :</td>
                        <td><input type="text" name="group" required value="<?php echo $var->Name; ?>"/></td>
                    </tr>
                    <tr>
                        <td width="120">Under Group :</td>
                        <td><?php comboBox('GroupId', $groupCombo, $var->UnderGroupId, TRUE); ?></td>
                    </tr>

                </table>
                <button type="submit" class="btn btn-primary" name="save" value="save"> 
                    <i class="icon icon-white icon-save"></i>Submit</button>
                <a href="index.php" class="btn btn-primary"> Back List</a>
            </form>
        </div>
    </div><!--/span-->

</div>


<?php include '../body/footer.php'; ?>