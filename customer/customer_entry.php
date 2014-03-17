<?php
include '../lib/DbManager.php';
include("../body/header.php");

$mode = getParam('mode');
$searchId = getParam('searchId');

if (isSave()) {


    $AdmitDate = getParam('AdmitDate');
    $Name = getParam('Name');
    $FatherSpouse = getParam('FatherSpouse');
    $PresentAddress = getParam('PresentAddress');
    $Age = getParam('Age');
    $Occupation = getParam('Occupation');
    $Cell = getParam('Cell');
    $GuarantorName = getParam('GuarantorName');
    $GuarantorAddress = getParam('GuarantorAddress');
    $GuarantorAge = getParam('GuarantorAge');
    $Relation = getParam('Relation');




    $path = file_upload_single('../customer_image/');

    if ($mode == 'new') {
        $Code = OrderNo(maxCustomerId());
        $insertCustomer = "INSERT INTO customer(PicturePath, `AdmitDate`, Name, CompanyID, Code, `FatherSpouse`, PresentAddress, Age, Occupation, Cell, GuarantorName, GuarantorAddress, GuarantorAge, Relation, CreatedBy, CreatedDate) 
            VALUES('$path', '$AdmitDate', '$Name', '$companyId', '$Code', '$FatherSpouse', '$PresentAddress', '$Age', '$Occupation', '$Cell', '$GuarantorName', '$GuarantorAddress', '$GuarantorAge', '$Relation', '$employeeId', NOW())";
        query($insertCustomer);

        $empId = insertLastId();
        file_upload_save('../customer_image/', "$empId", 'customer');
    } else {

        $Code = OrderNo($searchId);

        $updateCustomer = "UPDATE customer SET
            `AdmitDate`='$AdmitDate',
            Code='$Code', 
            PicturePath='$path',
            FatherSpouse='$FatherSpouse', 
            PresentAddress ='$PresentAddress',
            Age='$Age',
            Occupation ='$Occupation',
            Cell='$Cell',
            GuarantorName='$GuarantorName',
            GuarantorAddress='$GuarantorAddress',
            GuarantorAge='$GuarantorAge',
            Relation='$Relation',
            ModifiedBy='$employeeId', 
            ModifiedDate=NOW()
            WHERE CustomerId='$searchId'";

        query($updateCustomer);
        file_upload_save('../customer_image/', "$searchId", 'customer');
    }
    echo "<script>location.replace('index.php');</script>";
}

$var = find("SELECT * FROM customer WHERE CustomerId='$searchId'");
?>


<div style="position: absolute; right: 200px;"><img src="<?php echo $var->PicturePath; ?>" width="140"></div>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>

                <a href="#"></i> Customer New</a>
            </h3>
        </div>
        <div class="box-content">

            <?php //echo resultBlock($errors, $successes); ?>
            <form class="form-horizontal" action="<?php $_SERVER['PHP_SELF'] ?>" method="post" autocomplete="off" enctype="multipart/form-data">

                <table class="table table-striped table-bordered bootstrap-datatable">
                    <tr>
                        <td width="150">Date</td>
                        <td><input name="AdmitDate" type="text" class="datepicker input-xlarge focused" required data-date-format="yyyy-mm-dd" id="AdmitDate" value="<?php echo $var->AdmitDate; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input name="Name" type="text" class="input-xlarge focused" required id="Name" value="<?php echo $var->Name; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Picture</td>
                        <td><input name="file_one" type="file" class="input-xlarge focused" id="AdmitDate" value="<?php echo $var->PicturePath; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Father/Spouse Name</td>
                        <td><input name="FatherSpouse" type="text" class="input-xlarge focused" id="FatherSpouse" value="<?php echo $var->FatherSpouse; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Present Address</td>
                        <td><input name="PresentAddress" type="text" class="input-xlarge focused" id="PresentAddress" value="<?php echo $var->PresentAddress; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Permanent Address</td>
                        <td><textarea name='PermanentAddress' id='PermanentAddress' class='PermanentAddress'><?php echo $var->PresentAddress; ?></textarea></td>
                    </tr>
                    <tr>
                        <td>Age</td>
                        <td><input name="Age" type="text" class="input-xlarge focused" id="Age" value="<?php echo $var->Age; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Occupation</td>
                        <td><input name="Occupation" type="text" class="input-xlarge focused" id="Occupation" value="<?php echo $var->Occupation; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Cell</td>
                        <td><input name="Cell" type="text" class="input-xlarge focused" required id="Cell" value="<?php echo $var->Cell; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Guarantor Name</td>
                        <td><input name="GuarantorName" type="text" class="input-xlarge focused" id="GuarantorName" value="<?php echo $var->GuarantorName; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Guarantor Address</td>
                        <td><textarea name='GuarantorAddress'  id='GuarantorAddress' class='GuarantorAddress'><?php echo $var->GuarantorAddress; ?></textarea></td>
                    </tr>
                    <tr>
                        <td>Guarantor Age</td>
                        <td><input name="GuarantorAge" type="text" class="input-xlarge focused" id="GuarantorAge" value="<?php echo $var->GuarantorAge; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Relation</td>
                        <td><input name="Relation" type="text" class="input-xlarge focused" id="Relation" value="<?php echo $var->Relation; ?>" /></td>
                    </tr>
                </table>   
                <?php file_upload_edit($searchId, 'customer', TRUE); ?>    <br>
                <button type="submit" name="save" class="btn btn-primary">Save changes</button>
                <input type="hidden" name="searchId" value="<?php echo $searchId; ?>" />
                <a href="index.php" class="btn btn-primary">Customer List</a>

            </form>
        </div>
    </div><!--/span-->

</div>


<?php include '../body/footer.php'; ?>