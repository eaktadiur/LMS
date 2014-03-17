<?php

include './word_meaning_dal.php';
$dal = new wordMeaning();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');
$WordId = $dal->getParam('WordId');

//print_r($_POST);


if (isSave()) {

    include './word_meaning_dto.php';


    $MeaningEng = $dal->getParam('MeaningEng');
    $MeaningBg = $dal->getParam('MeaningBg');
    $PartsOfSpeech = $dal->getParam('PartsOfSpeech');
    $EngMeaningIsCorrect = $dal->getParam('EngMeaningIsCorrect');
    $BgMeaningIsCorrect = $dal->getParam('BgMeaningIsCorrect');

    $dto = new wordMeaningDto();

    $dto->SearchId = $searchId;
    $dto->WordId = $WordId;
    $dto->MeaningEng = $MeaningEng;
    $dto->MeaningBg = $MeaningBg;
    $dto->PartsOfSpeech = $PartsOfSpeech;
    $dto->EngMeaningIsCorrect = $EngMeaningIsCorrect;
    $dto->BgMeaningIsCorrect = $BgMeaningIsCorrect;


    if ($mode == 'new') {
        $result = $dal->save($dto);
    } elseif ($mode == 'edit') {
        $result = $dal->edit($dto);
    }

    if ($result) {
        echo json_encode(array('success' => true, 'id' => $result));
    } else {
        echo json_encode(array('msg' => 'Some errors occured.'));
    }
}
?>
