<?php
include '../lib/DbManager.php';
include("../body/header.php");

$mode = getParam('mode');
$searchId = getParam('searchId');

$var = find("SELECT * FROM customer WHERE CustomerId='$searchId'");
?>
<div>
    <ul class="breadcrumb">
        <li>
            <a href="index.php">Customer List</a> <span class="divider">/</span>
        </li>
        <li>
            <a href="leads.php">View Customer</a>
        </li>
    </ul>
</div>

<div style="position: absolute; right: 200px;"><img src="<?php echo $var->PicturePath; ?>" width="140"></div>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="../index/index.php">Home</a> <span class="divider">/</span>
                <a href="index.php">Customer List</a>
            </h3>
        </div>
        <div class="box-content">

            <?php //echo resultBlock($errors, $successes); ?>
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <tbody>
                    <tr>
                        <td width="150">Date</td>
                        <td><input name="AdmitDate" type="text" class="input-xlarge focused" id="AdmitDate" value="<?php echo $var->AdmitDate; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input name="Name" type="text" class="input-xlarge focused" id="Name" value="<?php echo $var->Name; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Picture</td>
                        <td><img src="<?php echo $var->PicturePath; ?>" height="10"></td>
                    </tr>
                    <tr>
                        <td>Code</td>
                        <td><input name="Code" type="text" class="input-xlarge focused" id="Code" value="<?php echo $var->Code; ?>" /></td>
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
                        <td><input name="Cell" type="text" class="input-xlarge focused" id="Cell" value="<?php echo $var->Cell; ?>" /></td>
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
                </tbody>
            </table>
            <?php file_upload_view($searchId, 'customer'); ?><br>
            <a href="index.php" class="btn btn-primary">Customer List</a>
        </div>
    </div><!--/span-->

</div>

<?php include '../body/footer.php'; ?>