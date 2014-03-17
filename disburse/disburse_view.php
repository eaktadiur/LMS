<?php
include '../lib/DbManager.php';

$mode = getParam('mode');
$searchId = getParam('searchId');


//$ledger_list = $loan_disbursment->get_ladger($CompanyId);
//$savings_list = getSavingByCompanyId($companyId);
$customer_list = getCustomerByCompanyId($companyId);
//$group_list = getGroupList($companyId);
$loan_term_list = getLoanTermByCompanyId($companyId);
$employee_list = getEmployeeByCompanyIdComb($companyId);
//$CollectionTypelist = getCollectionTypeByCompanyId($companyId);

$var = getDisburseById($companyId, $searchId);

include '../body/header.php';
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse View</a>
            </h3>
        </div>
        <div class="box-content">

            <table class="table table-striped table-bordered bootstrap-datatable">
                <tr>
                    <td width="120">Customer :</td>
                    <td><?php comboBox('customerId', $customer_list, $var->CustomerId, TRUE, 'required'); ?></td>
                </tr>
                <tr>
                    <td>Disburse Date :</td>
                    <td><input type="text" name="date" class="datepicker" required value="<?php echo $var->Date; ?>"/></td>
                </tr>
                <tr>
                    <td>Code :</td>
                    <td><input type="text" name="code" class="required" value="<?php echo $var->Code; ?>"/></td>
                </tr>
                <tr>
                    <td>Loan Amount :</td>
                    <td><input type="text" name="loan_amount" value="<?php echo $var->LoanAmount; ?>"/></td>
                </tr>
                <tr>
                    <td>Loan Type :</td>
                    <td><?php comboBox('loanTypeId', $loan_term_list, $var->LoanTypeId, TRUE, 'required'); ?></td>
                </tr>

                <tr>
                    <td>Collection :</td>
                    <td><?php comboBox('collectionDay', $weeklist, $var->CollectionDayId, TRUE); ?></td>
                </tr>

                <tr>
                    <td>Loan Term :</td>
                    <td><input type="text" name="loanTerm"  class="required" value="<?php echo $var->LoanTerm; ?>"/></td>
                </tr>
                <tr>
                    <td>Previous Loan Amount :</td>
                    <td><input type="text" name="previous_loan_amount" id="previous_loan_amount" readonly="true" class="required" value="<?php echo $var->PreviousLoanAmount; ?>"/></td>
                </tr>

                <tr>
                    <td>Interest Rate :</td>
                    <td><input type="text" name="interest_rate" class="required" value="<?php echo $var->InterestRate; ?>"/></td>
                </tr>

                <tr>
                    <td>Guarantor Name :</td>
                    <td><textarea name="gerentor_name" class="required"><?php echo $var->Guarantor; ?></textarea></td>
                </tr>

            </table>

            <h3>Collection Info</h3>
            <table class="table table-striped table-bordered bootstrap-datatable">
                <tr>
                    <td width="120">Principle Amount :</td>
                    <td><input type="text" name="principle_amount" class="required" value="<?php echo $var->PrincipalAmount; ?>"/></td>
                </tr>
                <tr>
                    <td>Interest Amount :</td>
                    <td><input type="text" name="interest_amount" class="required" value="<?php echo $var->InterestAmount; ?>"/></td>
                </tr>
                <tr>
                    <td>Installment :</td>
                    <td><input type="text" name="installment" readonly="true" value="<?php echo $var->Installment + $var->InterestAmount; ?>"/></td>
                </tr>
                <tr>
                    <td>Collect Person :</td>
                    <td><?php comboBox('collect_person', $employee_list, $var->CollectById, TRUE, 'required'); ?></td>
                </tr>
                <tr>
                    <td>Active :</td>
                    <td>Yes <input type="checkbox" name="isActive"  value="1" <?php echo $var->IsActive == 1 ? 'checked' : ''; ?> /></td>
                </tr>
            </table>
            <button type="button" class="btn btn-primary" onclick="goBack();">
                <i class="icon-white icon-arrow-left"></i> 
                Go Back
            </button>
        </div>
    </div><!--/span-->

</div>

<?php
include '../body/footer.php';
?>