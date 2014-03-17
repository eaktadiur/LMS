<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $array = array(
        'product' => 'ProductId',
        "$searchId" => "$employeeId",
        'Name' => "name",
        'UnitId' => "UnitId",
        'ProductGroupId' => 'GroupId',
        'CompanyId' => 'comanyId');

    if ($searchId) {
        updateTable($array);
    } else {
        saveTable($array);
    }

    echo "<script>location.replace('product_index.php')</script>";
    exit();
}



$var = find("SELECT * FROM product WHERE ProductId='$searchId'");

$groupCombo = getproductGroupCombo($companyId);
$unitCombo = getUnitCombo($companyId);



include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Product New</a>
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
                    <tr>
                        <td width="120">Unit :</td>
                        <td><?php comboBox('UnitId', $unitCombo, $var->UnitId, TRUE); ?></td>
                    </tr>
                    <tr>
                        <td>Under Group :</td>
                        <td><?php comboBox('GroupId', $groupCombo, $var->ProductGroupId, TRUE); ?></td>
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