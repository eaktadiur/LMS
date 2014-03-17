<?php
include './meaning_sentence_dal.php';
$dal = new meaningSentence();

$searchId = $dal->getParam("searchId");
$meaningId = $dal->getParam('meaningId');


$edit = $dal->getEdit($searchId);
$var = $edit->fetch_object();
$edit->close();

$result = $dal->getMeaning($meaningId);
$meaning = $result->fetch_object();
$result->close();
?>



<div style="font-size: 12pt; margin: 5px 5px;">Word : <b><?php echo $meaning->Word; ?></b></div>
<div style="font-size: 12pt; margin: 5px 5px;">Meaning Eng : <b><?php echo $meaning->MeaningEng; ?></b></div>


<table class="table">
    <tr>
        <td valign="top" width="120"><label for="SentenceId">Sentence: </label></td>
        <td><?php echo stripcslashes($var->Sentence); ?></td>
    </tr>
    <tr>
        <td><label for="Correct">Correct: </label></td>
        <td><?php echo $var->IsCorrect; ?></td>
    </tr>
</table>


