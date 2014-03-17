<?php
include '../lib/DbManager.php';
include '../body/header.php';


$result = getCountryList();

if (isSave()) {
    $save = getParam('save');

    if ($save == 'Create Company') {
        include 'Company_Create_DTO.php';

        $companyDTO = new Company_Create_DTO();
        $companyDTO->CompanyName = $_POST['companyname'];
        $companyDTO->Code = $_POST['Code'];
        $companyDTO->Address1 = $_POST['address1'];
        $companyDTO->Address2 = $_POST['address2'];
        $companyDTO->CountryID = $_POST['country'];
        $companyDTO->ZipCode = $_POST['zipcode'];
        $companyDTO->Phone = $_POST['phone'];
        $companyDTO->Email = $_POST['email'];
        $companyDTO->CurrencySymbol = $_POST['symbol'];
        $companyDTO->FinancialYearFrom = $_POST['financial'];
        $companyDTO->BooksBeginningFrom = $_POST['bookbeginfrom'];
        $companyDTO->IsActive = 1;
        $companyDTO->CreatedBy = 1;

        SaveCompany($companyDTO);
    }
}
?>


<h3><a href="company.php"> Back Company </a></h3>
<fieldset>
    <legend>Create Company</legend>
    <form name="create_company" Action = '' method = 'POST' class="form">
        <table>
            <tr>
                <td>Company Name: </td>
                <td><input type = 'text' name = 'companyname' class="required" size = '40' maxlength = '40'/></td>
            </tr>
            <tr>
                <td>Company Code: </td>
                <td><input type = 'text' name = 'Code' class="required" size = '40' maxlength = '40'/></td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td><textarea name = 'address1' rows="3" cols="50"></textarea></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td><textarea name="address2" rows="3" cols="50"></textarea></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><?php comboBox('country', $result, '', true, 'required'); ?></td>
            </tr>
            <tr>
                <td>Zip Code:</td>
                <td><input type = 'text' name = 'zipcode' size = '10' maxlength = '10'/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type = 'text' name = 'phone' size = '50' maxlength = '50'/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type = 'email' name = 'email' size = '37' maxlength = '40'/></td>
            </tr>
            <tr>
                <td>Currency Symbol:</td>
                <td><input type = 'txt' name = 'symbol' size = '10' maxlength = '10'/></td>
            </tr>
            <tr>
                <td>Financial Year:</td>
                <td><input type = 'text' name = 'financial' class="required date" size = '20' maxlength = '20'/></td>
            </tr>
            <tr>
                <td>Book Begin From:</td>
                <td><input type = 'text' name = 'bookbeginfrom'  class="required date" size = '20' maxlength = '20' /></td>
            </tr>
            <tr>
                <td>Is Active:</td>
                <td><input type = 'radio' name = 'isactive' value ="1"/></td>
            </tr>
        </table>
        <input type = 'Submit' value='Create Company' name="save"/>
    </form>
</fieldset>

<br/> <br/>
<?php include '../Index/footer.php'; ?>