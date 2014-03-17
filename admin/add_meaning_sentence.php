<?php
include './meaning_sentence_dal.php';
$dal = new meaningSentence();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');
$meaningId = $dal->getParam('meaningId');



if ($searchId) {
    $edit = $dal->getEdit($searchId);
    $var = $edit->fetch_object();
    $edit->close();
}
$result = $dal->getMeaning($meaningId);
$meaning = $result->fetch_object();
$result->close();
?>


<fieldset>
    <form action="" method="POST" id="frm" class="formValidate" autocomplete="off">
        <input type="hidden" name="save" value="save"/>
        <input type="hidden" name="mode" value="<?php echo $mode; ?>"/>
        <input type="hidden" name="searchId" value="<?php echo $searchId; ?>"/>
        <input type="hidden" name="meaningId" value="<?php echo $meaningId; ?>"/>

        <div style="font-size: 12pt; margin: 5px 5px;">Word : <b><?php echo $meaning->Word; ?></b></div>
        <div style="font-size: 12pt; margin: 5px 5px;">Meaning Eng : <b><?php echo $meaning->MeaningEng; ?></b></div>


        <table class="table">
            <tr>
                <td valign="top" width="120"><label for="SentenceId">Sentence: </label></td>
                <td><textarea name="Sentence" id="SentenceId" required="true" class="Sentence"><?php echo stripcslashes($var->Sentence); ?></textarea></td>
            </tr>
            <tr>
                <td><label for="Correct">Correct: </label></td>
                <td><input type="checkbox" name="Correct" value="1" <?php if ($var->IsCorrect == 'Yes') echo 'checked="checked"'; ?> /></td>
            </tr>
        </table>

    </form>
</fieldset>

