<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $array = array(
        'ledger' => 'LedgerId',
        "$searchId" => "$employeeId",
        'Name' => "ledger",
        'GroupId' => 'GroupId',
        'Code' => 'code',
        'Address'=>'Address',
        'CompanyId' => 'comanyId',
        'IsActive' => 'IsActive');

    if ($searchId == '') {
        saveTable($array);
        $ledgerCode = OrderNo(insertLastId());
        $sql = "UPDATE ledger SET Code='$ledgerCode', ModifiedBy='$employeeId', ModifiedDate=NOW() WHERE LedgerId='$searchId'";
        query($sql);
    } else {
        updateTable($array);
        $ledgerCode = OrderNo($searchId);
        $sql = "UPDATE ledger SET Code='$ledgerCode', ModifiedBy='$employeeId', ModifiedDate=NOW() WHERE LedgerId='$searchId'";
        query($sql);
    }



    echo "<script>location.replace('ledger_index.php')</script>";
    exit();
}



$var = find("SELECT * FROM ledger WHERE LedgerId='$searchId'");

$ledgerNo = $var->Code == '' ? OrderNo(maxLedgerId()) : $var->Code;


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
                <a href="#">Ledger New</a>
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
                        <td><input type="text" name="ledger" autofocus required value="<?php echo $var->Name; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Code :</td>
                        <td><input type="text" name="code" id="code" required value="<?php echo $ledgerNo; ?>"/></td>
                    </tr>
                    <tr>
                        <td width="120">Under :</td>
                        <td><?php comboBox('GroupId', $groupCombo, $var->GroupId, TRUE, '', 'required'); ?></td>
                    </tr>
                    <tr>
                        <td class="v-top">Address :</td>
                        <td><textarea type="text" name="Address"/><?php echo $var->Address; ?></textarea></td>
                    </tr>

                </table>
                <button type="submit" class="btn btn-primary" name="save" value="save"> 
                    <i class="icon icon-white icon-save"></i>Submit</button>
                <a href="index.php" class="btn btn-primary">
                    <i class="icon-white icon-arrow-left"></i> Back List</a>
            </form>
        </div>
    </div><!--/span-->

</div>


<?php include '../body/footer.php'; ?>