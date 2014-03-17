<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $array = array(
        'unit' => 'UnitId',
        "$searchId" => "$employeeId",
        'Name' => "name",
        'CompanyId' => 'comanyId');

    if ($searchId) {
        updateTable($array);
    } else {
        saveTable($array);
    }

    echo "<script>location.replace('unit_index.php')</script>";
    exit();
}



$var = find("SELECT * FROM unit WHERE UnitId='$searchId'");

$groupCombo = getproductGroupCombo($companyId);



include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Unit New</a>
            </h3>
        </div>
        <div class="box-content">

            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST" autocomplete="off" enctype="multipart/form-data">
                <input type="hidden" name="comanyId" value="<?php echo $companyId; ?>"/>

                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td>Name :</td>
                        <td><input type="text" name="name" required autofocus value="<?php echo $var->Name; ?>"/></td>
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