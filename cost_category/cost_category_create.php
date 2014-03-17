<?php
include '../lib/DbManager.php';
include '../body/header.php';

if (!empty($_REQUEST)) {
    $DTO = new Accounts_Group_DTO();
    $DTO->GroupName = $_REQUEST['GroupName'];
    $DTO->GroupID = $_REQUEST['GroupID'];
    $Group = new Accounts_Group_DAL();
    $Group->SaveGroup($DTO);
}
?>
<h1>Cost Category</h1>
<a href="cost_category.php"> Back </a>

<fieldset>
    <legend>Cost Category Create</legend>
    <form action="" method="POST">
        <table>
            <tr>
                <td>Cost Category Name:  </td>
                <td><input type="text" name="cost_category_name" maxlenght="30"/></td>
            </tr>
            <tr>
                <td>Under:</td>
                <td>
                    <select name="under_cost_category_name">
                        <option>rajib</option>
                        <option>sajob</option>
                        <option>Noman</option>

                    </select>
                </td>
            </tr>
        </table>
        <input type="submit" name="submit" value="Create"/>
    </form>
</fieldset>

<?php include '../Index/footer.php'; ?>