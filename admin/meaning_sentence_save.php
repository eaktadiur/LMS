<?php

include './meaning_sentence_dal.php';
$dal = new meaningSentence();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');
$meaningId = $dal->getParam('meaningId');

//print_r($_POST);


if (isSave()) {

    $Sentence = $dal->getParam('Sentence');
    $Correct = $dal->getParam('Correct');


    if ($mode == 'new') {
        $result = $dal->save($meaningId, $Sentence, $Correct);
    } elseif ($mode == 'edit') {
        $result = $dal->edit($searchId, $Sentence, $Correct);
    }

    if ($result) {
        echo json_encode(array('success' => true, 'id' => $result));
    } else {
        echo json_encode(array('msg' => 'Some errors occured.'));
    }
}
?>
