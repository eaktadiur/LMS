<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './Accounts_Group_DAL.php';

$Account_Group = new Accounts_Group_DAL();
$group_list = $Account_Group->Groups_List($companyid);

//print_r($group_list);   

if ($_POST) {
    $Account_Group->Group_Save($companyid);
}
?>

<h2>Groups</h2>

<a href="accounts_group.php"> Back</a>
<fieldset>
    <legend>Create Group</legend>
    <form action="accounts_group_create.php" method="POST">
    <table>
        <tr>
            <td><label name="groupname">Group Name:</label></td>
            <td><input type="text" name="GroupName"/></td>
            <td><lable name="undergroup"> Under Group:</lable></td>
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
    </table>
    <input type="submit" value="Create" name="create"/> 
</form>
</fieldset>  

<?php include '../Index/footer.php'; ?>