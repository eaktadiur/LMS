<?php

include './word_dal.php';
$dal = new word();

$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');



if (isSave()) {

    include './word_dto.php';

    $Word = $dal->getParam('Word');
    $PhoneticEnglish = $dal->getParam('PhoneticEnglish');
    $PhoneticBangla = $dal->getParam('PhoneticBangla');
    $MeaningEng = $dal->getParam('MeaningEng');
    $MeaningBg = $dal->getParam('MeaningBg');
    $PartsOfSpeech = $dal->getParam('PartsOfSpeech');
    $EngMeaningIsCorrect = $dal->getParam('EngMeaningIsCorrect');
    $BgMeaningIsCorrect = $dal->getParam('BgMeaningIsCorrect');
    $DifficultyLevel = $dal->getParam('DifficultyLevel');

    $dto = new wordDto();

    $dto->SearchId = $searchId;
    $dto->Word = $Word;
    $dto->Sound = '';
    $dto->PhoneticEnglish = $PhoneticEnglish;
    $dto->PhoneticBangla = $PhoneticBangla;
    $dto->MeaningEng = $MeaningEng;
    $dto->MeaningBg = $MeaningBg;
    $dto->PartsOfSpeech = $PartsOfSpeech;
    $dto->EngMeaningIsCorrect = $EngMeaningIsCorrect;
    $dto->BgMeaningIsCorrect = $BgMeaningIsCorrect;
    $dto->DifficultyLevel = $DifficultyLevel;
    $dto->IsCorrect = '';


    if ($mode == 'new') {
        $result = $dal->save($dto);
        //echo "<script>location.replace('word.php?mode=new');</script>";
    } elseif ($mode == 'edit') {
        $result = $dal->edit($dto);
        //echo "<script>location.replace('word.php?mode=');</script>";
    }

    if ($result) {
        echo json_encode(array('success' => true, 'id' => $result));
    } else {
        echo json_encode(array('msg' => 'Some errors occured.'));
    }
}
?>
