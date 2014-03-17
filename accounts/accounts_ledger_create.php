<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './Accounts_Group_DAL.php';

$Account_Group = new Accounts_Group_DAL();
$group_list = $Account_Group->Groups_List($companyid);
?>


<a href="Accounts_Ledger.php"> Back to Ledger </a> </br>
<fieldset>
    <legend>Create Ledger</legend>
    <form>
        <table>
            <tbody>
                <tr>
                    <td>Ledger Name:</td>
                    <td><input type="text" name="ledger" maxlength="30"></input></td>
                </tr>
                <tr>
                    <td>Under Group:</td>
                    <td>
                        <select name="GroupID">
                            <option></option>
                            <?php
                            foreach ($group_list as $key => $value) {
                                echo "<option value='$value[GroupID]'>$value[Name]</option>";
                            }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="address" cols="50" rows="3"></textarea></td>
                </tr>
                <tr>
                    <td>Sales Tex No:</td>
                    <td><input type="text" name="salesno" maxlength="50"></input></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Create"></input></td>
                </tr>
            </tbody>
        </table>
    </form>
</fieldset>
<?php include '../Index/footer.php'; ?>
