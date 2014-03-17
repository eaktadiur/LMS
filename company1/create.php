<?php
include_once '../lib/therp_include.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Schoolify ERP</title>
        <link rel="stylesheet" href="../public/css/Site.css"/>
        <link rel="stylesheet" href="../public/css/css3buttons.css"/>
        <link rel="stylesheet" href="../jquery-ui-1.10.3/css/smoothness/jquery-ui-1.10.3.custom.min.css"/>
        <!-- Optimize for mobile devices -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
        <script type="text/javascript" src="../public/js/jquery-1.7.2.js"></script>
        <script type="text/javascript" src="../jquery-ui-1.10.3/js/jquery-ui-1.10.3.custom.min.js"></script>
        <script type="text/javascript" src="../public/js/headerScript.js"></script>
        <script type="text/javascript" src="../public/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="../public/js/headerScript.js"></script>
        <script type="text/javascript" src="../jquery-ui-1.10.3/development-bundle/ui/jquery.ui.datepicker.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                $('.date').datepicker({
                    dateFormat: 'yy-mm-dd',
                    changeMonth: true,
                    changeYear: true
                });


            });
        </script>
    </head>
    <body>
        <?php
        include 'CompanyDAL.php';


        $companyDAL = new CompanyDAL();
        $result = $companyDAL->CountryList();

        if ($_POST) {
            $save = $_REQUEST['save'];

            if ($save == 'Create Company') {
                include 'Company_Create_DTO.php';

                $companyDTO = new Company_Create_DTO();
                $companyDTO->CompanyName = $_POST['companyname'];
                $companyDTO->Address1 = $_POST['address1'];
                $companyDTO->Address2 = $_POST['address2'];
                $companyDTO->CountryID = $_POST['country'];
                $companyDTO->ZipCode = $_POST['zipcode'];
                $companyDTO->Phone = $_POST['phone'];
                $companyDTO->Email = $_POST['email'];
                $companyDTO->CurrencySymbol = $_POST['symbol'];
                $companyDTO->FinancialYearFrom = $_POST['financial'];
                $companyDTO->BooksBeginningFrom = $_POST['bookbeginfrom'];
                $companyDTO->LoginId = $_POST['loginId'];
                $companyDTO->LoginPass = $_POST['login_pass'];
                $companyDTO->IsActive = 1;
                $companyDTO->CreatedBy = 1;

                $companyDAL->SaveCompany($companyDTO);
            }
        }
        ?>


        <fieldset>
            <legend>Create Company</legend>
            <form name="create_company" Action = '' method = 'POST' class="form">
                <table>
                    <tr>
                        <td>Company Name: </td>
                        <td><input type = 'text' name = 'companyname' class="required" size = '40' maxlength = '40'/></td>
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
                        <td>
                            <select name="country">
                                <?php while ($row = mysql_fetch_object($result)) { ?>
                                    <option value="<?php echo $row->CountryID; ?>"><?php echo $row->Country_Name; ?></option>
                                    <?php
                                }
                                ?>

                            </select>
                        </td>
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
                    <tr>
                        <td>Login Id:</td>
                        <td><input type = 'text' name = 'loginId' value ="" class="required"/></td>
                    </tr>
                    <tr>
                        <td>Login Pass:</td>
                        <td><input type = 'password' name = 'login_pass' value ="" class="required"/></td>
                    </tr>
                </table>
                <input type = 'Submit' value= 'Create Company' name="save"/>
                <a href="../index/index.php" class="button">Back</a>
            </form>
        </fieldset>
    </body>
    <br/> <br/>
    <?php include '../Index/footer.php'; ?>