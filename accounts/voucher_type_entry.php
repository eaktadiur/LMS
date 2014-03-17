<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $array = array(
        'ledger' => 'LedgerId',
        "$searchId" => "$employeeId",
        'Name' => "voucherName",
        'mainvoucher' => 'voucherMainId',
        'CompanyId' => 'comanyId',
        'IsActive'=>'IsActive');

    saveTable($array);

    echo "<script>location.replace('voucher_type_index.php')</script>";
    exit();
}



$var = find("SELECT * FROM voucher_type WHERE VoucherTypeId='$searchId'");
$VoucherMainCombo = getVoucherMainCombo($companyId);



include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Voucher Type New</a>
            </h3>
        </div>
        <div class="box-content">

            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST"autocomplete="off" enctype="multipart/form-data">
                <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
                <input type="hidden" name="ledgerId" value="<?php echo $var->LedgerId; ?>"/>
                <input type="hidden" name="comanyId" value="<?php echo $companyId; ?>"/>
                <input type="hidden" name="IsActive" value="1"/>
                
                
                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td>Name :</td>
                        <td><input type="text" name="voucherName" required value="<?php echo $var->Name; ?>"/></td>
                    </tr>
                    <tr>
                        <td width="120">Under :</td>
                        <td><?php comboBox('voucherMainId', $VoucherMainCombo, $var->Id, TRUE, '', 'required'); ?></td>
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