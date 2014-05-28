<?php
include '../lib/DbManager.php';



$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {

    $ledgerId = getParam('ledgerId');
    $customerId = getParam('customerId');
    $savingTypeId = getParam('savingTypeId');
    $collection_amount = getParam('collection_amount');
    $interest_rate = getParam('interest_rate');
    $nominee_name = getParam('nominee_name');
    $collect_person = getParam('collect_person');
    $collectionDay = getParam('collectionDay');
    $isActive = getParam('isActive');
    $date=  getParam('date');


    if ($mode == 'new') {
        $sql = "INSERT INTO savings(Date, LedgerId, CustomerId, CollectionDayId, SavingTypeId, InterestRate, Nominee, CollectionAmount, CollectById, CompanyId, IsActive, CreatedBy, CreatedDate)
            VALUES('$date','$ledgerId', '$customerId', '$collectionDay', '$savingTypeId', '$interest_rate', '$nominee_name', '$collection_amount', '$collect_person',  '$companyId', '$isActive', '$employeeId', NOW())";
        query($sql);
    } else {



        $updateLoanDis = "UPDATE savings s SET 
            s.`CustomerId`='$customerId',
            s.Date='$date',
            s.`LedgerId`='$ledgerId', 
            s.Code='$code',
            s.SavingTypeId='$savingTypeId',
            s.InterestRate='$interest_rate', 
            s.Nominee='$nominee_name', 
            s.CollectionAmount='$collection_amount', 
            s.IsActive='1', 
            s.CollectById='$collect_person',
            s.ModifiedBy='$employeeId',
            s.IsActive='$isActive',    
            s.ModifiedDate=NOW()
            WHERE s.SavingsId='$searchId'";

        query($updateLoanDis);
    }
    echo "<script>location.replace('index.php');</script>";
}

$var = find("SELECT * FROM savings WHERE SavingsId='$searchId'");

$customerList = getCustomerByCompanyId($companyId);
$savingsList = getSavingByCompanyId($companyId);
$employeeList = getEmployeeByCompanyIdComb($companyId);
$partyLedger = getLedgerCombo($companyId);


include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Savings New</a>
            </h3>
        </div>
        <div class="box-content">

            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="POST"autocomplete="off" enctype="multipart/form-data">
                <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
                
				<table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td>Date :</td>
                        <td><input type="text" name="date" class="datepicker" required value="<?php echo $var->Date; ?>"/><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td width="120">Customer :</td>
                        <td><?php comboBox('customerId', $customerList, $var->CustomerId, TRUE, 'autoComplate', 'required'); ?><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td>Ledger: </td>
                        <td><?php comboBox('ledgerId', $partyLedger, "$var->LedgerId", TRUE, 'autoComplate', 'required'); ?><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td>Savings :</td>
                        <td><?php comboBox('savingTypeId', $savingsList, $var->SavingTypeId, TRUE, ''); ?></td>
                    </tr>

                    <tr>
                        <td>Collection :</td>
                        <td><?php comboBox('collectionDay', $weeklist, $var->CollectionDayId, TRUE); ?></td>
                    </tr>
                    <tr>
                        <td>Interest Rate :</td>
                        <td><input type="text" name="interest_rate" class="required" value="<?php echo $var->InterestRate; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Collection Amount :</td>
                        <td><input type="text" name="collection_amount" value="<?php echo $var->CollectionAmount; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Nominee Name :</td>
                        <td><textarea name="nominee_name" class="required"><?php echo $var->Nominee; ?></textarea></td>
                    </tr>
                    <tr>
                        <td>Collect Person :</td>
                        <td><?php comboBox('collect_person', $employeeList, $var->CollectById, TRUE, ''); ?></td>
                    </tr>

                    <tr>
                        <td>Active :</td>
                        <td>Yes <input type="checkbox" name="isActive"  value="1" <?php echo $var->IsActive == 1 ? 'checked' : ''; ?> /></td>
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