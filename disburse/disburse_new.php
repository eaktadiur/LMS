<?php
include '../lib/DbManager.php';


$mode = getParam('mode');
$searchId = getParam('searchId');


if (isSave()) {


    $customerId = getParam('customerId');
    $date = getParam('date');
    $Ledger = getParam('Ledger');
    $code = getParam('code');
    $groupId = getParam('groupId');
    $savingsId = getParam('savingsId');
    $loan_amount = getParam('loan_amount');
    $loanTypeId = getParam('loanTypeId');
    $loanTerm = getParam('loanTerm');
    $previous_loan_amount = getParam('previous_loan_amount');
    $CollectionTypeId = getParam('CollectionTypeId');
    $interest_rate = getParam('interest_rate');
    $gerentor_name = getParam('gerentor_name');
    $employeeId = getParam('employeeId');
    $principle_amount = getParam('principle_amount');
    $interest_amount = getParam('interest_amount');
    $installment = getParam('installment');
    $ledgerId = getParam('ledgerId');
    $collect_person = getParam('collect_person');
    $collectionDay = getParam('collectionDay');
    $isActive=  getParam('isActive');


    if ($mode == 'new') {
        $installment = (int) ($principle_amount + $interest_amount);

        //Disbus Loan
        $sql = "INSERT INTO loan_disburse(LedgerId, Date, CustomerId, LoanAmount, LoanTerm, PreviousLoanAmount, InterestRate, PrincipalAmount, InterestAmount, Installment, Guarantor, CollectById, CollectionDayId, CollectionTypeId, LoanTypeId, CompanyID, IsActive, CreatedBy, CreatedDate)
            VALUES('$Ledger', '$date', '$customerId', '$loan_amount', '$loanTerm', '$previous_loan_amount', '$interest_rate', '$principle_amount', '$interest_amount', '$installment', '$gerentor_name', '$collect_person', '$collectionDay', '$CollectionTypeId', '$loanTypeId', '$companyId', '$isActive', '$employeeId', NOW())";
        query($sql);

        $loanDisburseId = insertLastId();
        $disburseCode = OrderNo($loanDisburseId);

        $updateLoanDis = "UPDATE loan_disburse SET
            Code='$disburseCode'
            WHERE LoanDisburseId='$loanDisburseId'";

        query($updateLoanDis);
    } else {

        $installment = (int) ($principle_amount + $interest_amount);
        $disburseCode = OrderNo($searchId);

        $updateLoanDis = "UPDATE loan_disburse SET
            Date='$date',
            `CustomerId`='$customerId',
            `LedgerId`='$ledgerId', 
            Code='$disburseCode',
            LoanAmount='$loan_amount',
            LoanTypeId='$loanTypeId',
            CollectionTypeId='$CollectionTypeId',
            CollectionDayId='$collectionDay',
            LoanTerm='$loanTerm', 
            PreviousLoanAmount='$previous_loan_amount', 
            InterestRate='$interest_rate', 
            PrincipalAmount='$principle_amount', 
            InterestAmount='$interest_amount', 
            Installment='$installment', 
            Guarantor='$gerentor_name', 
            CollectById='$collect_person', 
            IsActive='$isActive', 
            ModifiedBy='$employeeId', 
            ModifiedDate=NOW()
            WHERE LoanDisburseId='$searchId'";

        query($updateLoanDis);
    }
    echo "<script>location.replace('index.php');</script>";
}

if ($mode == 'delete') {
    $sqlCollection = "DELETE FROM loan_disburse WHERE LoanDisburseId='$searchId' ";
    $sqlLedger = "";
    //query($sql);
    //query($sql);
}



$customer_list = getCustomerByCompanyId($companyId);
$loan_term_list = getLoanTermByCompanyId($companyId);
$employee_list = getEmployeeByCompanyIdComb($companyId);
$partyLedger = getLedgerCombo($companyId);

$var = getDisburseById($companyId, $searchId);

$disbruseNo = $var->Code == '' ? OrderNo(maxDisburseId()) : $var->Code;
include("../body/header.php");
?>

<script type="text/javascript">

    function previousAmount(obj, id) {
        $('#' + id).html('<img src="../public/images/ajaxLoader.gif"/>');
        $.ajax({
            url: 'ajax_' + id.toLocaleString() + '.php',
            type: "GET",
            data: 'val=' + obj.val(),
            success: function(msg) {
                $('#' + id).html(msg);
            }
        });
    }

    function sumInstallment() {
        var principal = $("#principle_amount").val(),
                interest = $('#interest_amount').val(),
                total = parseFloat($.isNumeric(principal) ? principal : 0) + parseFloat($.isNumeric(interest) ? interest : 0);
        $('#Installment').val(total);
    }

    $(document).ready(function() {

//        $('.autoComplate').selectToAutocomplete();

        $('#customerIdID').change(function() {
            $.ajax({
                url: 'ajax_previous_amount.php',
                type: "POST",
                data: 'val=' + $('#customerIdID').val(),
                success: function(data) {
                    $('#previous_loan_amount').val(data);
                }
            });
        });
    });
</script>


<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse New</a>
            </h3>
        </div>
        <div class="box-content">

            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="post" autocomplete="off" enctype="multipart/form-data">
                <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
                <input type="hidden" name="ledgerId" value="<?php echo $var->LedgerId; ?>"/>
                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td>Disburse Date :</td>
                        <td><input type="text" name="date" class="datepicker" required value="<?php echo $var->Date; ?>"/><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td width="120">Customer :</td>
                        <td><?php comboBox('customerId', $customer_list, $var->CustomerId, TRUE, 'autoComplate', 'required'); ?><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td>Ledger: </td>
                        <td><?php comboBox('Ledger', $partyLedger, "$var->LedgerId", TRUE, 'autoComplate', 'required'); ?><span class="red"> *</span></td>
                    </tr>

                    <td>Loan Amount :</td>
                    <td><input type="text" name="loan_amount" required value="<?php echo $var->LoanAmount; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Loan Type :</td>
                        <td><?php comboBox('loanTypeId', $loan_term_list, $var->LoanTypeId, TRUE, '', 'required'); ?></td>
                    </tr>
                    <tr>
                        <td>Collection :</td>
                        <td><?php comboBox('collectionDay', $weeklist, $var->CollectionDayId, TRUE); ?></td>
                    </tr>
                    <tr>
                        <td>Loan Term :</td>
                        <td><input type="text" name="loanTerm"  required value="<?php echo $var->LoanTerm; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Previous Loan Amount :</td>
                        <td><input type="text" name="previous_loan_amount" id="previous_loan_amount" readonly="true" class="required" value="<?php echo $var->PreviousLoanAmount; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Interest Rate :</td>
                        <td><input type="text" name="interest_rate" required value="<?php echo $var->InterestRate; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Guarantor Name :</td>
                        <td><textarea name="gerentor_name" required><?php echo $var->Guarantor; ?></textarea></td>
                    </tr>
                </table>

                <h3>Collection Info</h3>
                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td width="120">Principle Amount :</td>
                        <td><input type="text" name="principle_amount" onchange="sumInstallment();" id="principle_amount" class="required" value="<?php echo $var->PrincipalAmount; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Interest Amount :</td>
                        <td><input type="text" name="interest_amount" onchange="sumInstallment();" id="interest_amount" class="required" value="<?php echo $var->InterestAmount; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Installment :</td>
                        <td><input type="text" name="installment" id="Installment" readonly="true" value="<?php echo $var->Installment; ?>"/></td>
                    </tr>
                    <tr>
                        <td>Collect Person :</td>
                        <td><?php comboBox('collect_person', $employee_list, $var->CollectById, TRUE, '', 'required'); ?></td>
                    </tr>
                    <tr>
                        <td>Active :</td>
                        <td>Yes <input type="checkbox" name="isActive"  value="1" <?php echo $var->IsActive == 1 ? 'checked' : ''; ?> /></td>
                    </tr>
                </table>
                <button type="submit" class="btn btn-primary" name="save" value="save">Submit</button>
                <button type="button" class="btn btn-primary" onclick="goBack();">
                    <i class="icon-white icon-arrow-left"></i> 
                    Go Back
                </button>
            </form>
        </div>
    </div><!--/span-->

</div>

<?php
include '../body/footer.php';
?>