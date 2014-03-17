<?php
include './word_meaning_dal.php';
$dal = new wordMeaning();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');
$wordId = $dal->getParam('wordId');
$word = $_REQUEST['word'];



if ($searchId) {
    $edit = $dal->getEdit($searchId);
    $var = $edit->fetch_object();
    $edit->close();
}
?>


<fieldset>
    <form action="" method="POST" id="frm" class="formValidate" autocomplete="off">
        <input type="hidden" name="save" value="save"/>
        <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
        <input type="hidden" name="searchId" value="<?php echo $searchId; ?>"/>
        <input type="hidden" name="WordId" value="<?php echo $wordId; ?>"/>

        <div style="font-size: 12pt; margin: 5px 5px;">Word : <b><?php echo $word; ?></b></div>

        <table class="table">
            <tr>
                <td width="120"><label for="MeaningEngId">Meaning Eng: </label></td>
                <td><input type="text" name="MeaningEng" id="MeaningEngId" required="true" class="MeaningEng" value="<?php echo stripcslashes($var->MeaningEng); ?>"/></td>
            </tr>
            <tr>
                <td width="120"><label for="MeaningBgId">Meaning Bg: </label></td>
                <td><input type="text" name="MeaningBg" id="MeaningBgId" class="MeaningBg" value="<?php echo stripcslashes($var->MeaningBg); ?>"/></td>
            </tr>
            <tr>
                <td><label for="PartsOfSpeechId">Parts Of Speech: </label></td>
                <td><?php comboBox('PartsOfSpeech', getPartsSpeechList(), $var->PartsOfSpeech, FALSE); ?> </td>
            </tr>
            <tr>
                <td><label for="WordId">EngMeaningIsCorrect: </label></td>
                <td><input type="checkbox" name="EngMeaningIsCorrect" value="1" <?php if ($var->BgMeaningIsCorrect == 'Yes') echo 'checked="checked"'; ?>/></td>
            </tr>
            <tr>
                <td><label for="WordId">BgMeaningIsCorrect: </label></td>
                <td><input type="checkbox" name="BgMeaningIsCorrect" value="1" <?php if ($var->EngMeaningIsCorrect == 'Yes') echo 'checked="checked"'; ?> /></td>
            </tr>
        </table>

    </form>
</fieldset>

