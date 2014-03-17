<?php
include './word_dal.php';
$dal = new word();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');



$edit = $dal->getEdit($searchId);
$var = $edit->fetch_object();
$edit->close();
?>

<table>
    <tr>
        <td width="120"><label for="WordId">Word: </label></td>
        <td><?php echo stripcslashes($var->Word); ?></td>
    </tr>
    <tr>
        <td width="120"><label for="DifficultyLevelId">Difficulty Level: </label></td>
        <td><?php echo $var->DifficultyLevel; ?></td>
    </tr>
    <tr>
        <td><label for="PhoneticEnglishId">Phonetic English: </label></td>
        <td><?php echo stripcslashes($var->Phonetic_eng); ?></td>
    </tr>
    <tr>
        <td><label for="PhoneticBanglaId">Phonetic Bangla: </label></td>
        <td><?php echo stripcslashes($var->Phonetic_bg); ?></td>
    </tr>
</table>



