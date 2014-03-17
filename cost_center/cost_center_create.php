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
<h1>Cost Center</h1>
<a href="cost_center.php">Back</a>
<fieldset>
    <legend>Cost Center Create</legend>
    <form>
        <table>
            <tbody>
                <tr>
                    <td>Cost Center Name:</td>
                    <td><input type="text" name="name" maxlenght="30"></input></td>
                </tr>
                <tr>
                    <td>Cost Category:</td>
                    <td>
                        <select name="c_category" size="1">
                            <option>Taka</option>
                            <option>Poisa</option>

                            <option>Habijabi</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Company:</td>
                    <td>
                        <select name="company" size="1">
                            <option>Microsoft</option>
                            <option>Intel</option>

                            <option>Atmel</option>

                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Create"></input></td>
                </tr>

            </tbody>
        </table>
    </form>
</fieldset>

<?php include '../Index/footer.php'; ?>