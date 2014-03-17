<?php
include './word_dal.php';
$dal = new word();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');

if ($searchId) {

    $edit = $dal->getEdit($searchId);
    $var = $edit->fetch_object();
    $DiffLevel = $var->DifficultyLevel != '' ? $var->DifficultyLevel : 1;
    $edit->close();
}
?>
<fieldset>
    <form action="" method="POST" id="frm" class="formValidate" autocomplete="off">
        <input type="hidden" name="save" value="save"/>
        <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
        <input type="hidden" name="searchId" value="<?php echo $searchId; ?>"/>

        <table class="table">
            <tr>
                <td width="120"><label for="WordId">Word: </label></td>
                <td><input type="text" name="Word" id="WordId" class="Word required" value="<?php echo stripcslashes($var->Word); ?>"/></td>
            </tr>
            <tr>
                <td width="120"><label for="DifficultyLevelId">Difficulty Level: </label></td>
                <td><input type="text" name="DifficultyLevel" id="DifficultyLevelId" max="10" min="1"  class="easyui-numberspinner easyui-validatebox DifficultyLevel" value="<?php echo $DiffLevel; ?>"/></td>
            </tr>
            <tr>
                <td><label for="PhoneticEnglishId">Phonetic English: </label></td>
                <td><input type="text" name="PhoneticEnglish" id="PhoneticEnglishId" class="PhoneticEnglish" value="<?php echo stripcslashes($var->Phonetic_eng); ?>"/></td>
            </tr>
            <tr>
                <td><label for="PhoneticBanglaId">Phonetic Bangla: </label></td>
                <td><input type="text" name="PhoneticBangla" id="PhoneticBanglaId" class="PhoneticBangla" value="<?php echo stripcslashes($var->Phonetic_bg); ?>"/></td>
            </tr>
        </table>

    </form>
</fieldset>

