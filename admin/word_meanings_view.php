<?php
include './word_meaning_dal.php';
$dal = new wordMeaning();

$searchId = $dal->getParam("searchId");
$WordId = $dal->getParam('WordId');
$Word = $dal->getParam('word');
$mode = $dal->getParam('mode');


$edit = $dal->getEdit($searchId);
$var = $edit->fetch_object();
$edit->close();
?>



<div style="font-size: 12pt; margin: 15px 5px;">Word : <b><?php echo stripcslashes($Word); ?></b></div>
<table class="table">
    <tr>
        <td width="120"><label for="MeaningEngId">Meaning Eng: </label></td>
        <td><?php echo stripcslashes($var->MeaningEng); ?></td>
    </tr>
    <tr>
        <td width="120"><label for="MeaningBgId">Meaning Bg: </label></td>
        <td><?php echo stripcslashes($var->MeaningBg); ?></td>
    </tr>
    <tr>
        <td><label for="PartsOfSpeechId">Parts Of Speech: </label></td>
        <td><?php echo partsSpeech($var->PartsOfSpeech); ?></td>
    </tr>
    <tr>
        <td><label for="WordId">EngMeaningIsCorrect: </label></td>
        <td><?php echo $var->EngMeaningIsCorrect; ?></td>
    </tr>
    <tr>
        <td><label for="WordId">BgMeaningIsCorrect: </label></td>
        <td><?php echo $var->BgMeaningIsCorrect; ?></td>
    </tr>
</table>


