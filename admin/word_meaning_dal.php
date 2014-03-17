<?php

include_once '../lib/DbManager.php';

class wordMeaning extends DbManager {

    function __construct() {
        $this->link = $this->OpenDb();
    }

    public function getList($WordId) {
        $sql = "SELECT MeaningId, MeaningEng, MeaningBg, PartsOfSpeech, (CASE WHEN EngMeaningIsCorrect=1 THEN 'Yes' ELSE 'No' END) AS EngMeaningIsCorrect, 
        (CASE WHEN BgMeaningIsCorrect =1 THEN 'Yes' ELSE 'No' END) AS BgMeaningIsCorrect 
        FROM WordsMeaning WHERE WordId='$WordId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function getEdit($searchId) {
        $sql = "SELECT MeaningEng, MeaningBg, PartsOfSpeech, (CASE WHEN EngMeaningIsCorrect=1 THEN 'Yes' ELSE 'No' END) AS EngMeaningIsCorrect, 
        (CASE WHEN BgMeaningIsCorrect =1 THEN 'Yes' ELSE 'No' END) AS BgMeaningIsCorrect, w.Word, wm.WordId
        FROM WordsMeaning wm
        LEFT JOIN Words w ON w.WordId=wm.WordId
        WHERE MeaningId='$searchId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function getWordNameById($searchId) {
        $sql = "SELECT Word, Phonetic_bg, Phonetic_eng, Sound, DifficultyLevel 
            FROM Words WHERE WordId='$searchId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function save($dto) {
        $sqlMeaning = "INSERT INTO WordsMeaning(WordId, MeaningEng, MeaningBg, PartsOfSpeech, EngMeaningIsCorrect, BgMeaningIsCorrect) 
            VALUES('$dto->WordId', '$dto->MeaningEng', '$dto->MeaningBg', '$dto->PartsOfSpeech', '$dto->EngMeaningIsCorrect', '$dto->BgMeaningIsCorrect')";
        $this->link->query($sqlMeaning);
        $lastId = mysqli_insert_id($this->link);

        return $lastId;
    }

    public function edit($dto) {
        $sqlWord = "UPDATE WordsMeaning SET
            MeaningEng='$dto->MeaningEng', 
            MeaningBg='$dto->MeaningBg', 
            PartsOfSpeech='$dto->PartsOfSpeech', 
            EngMeaningIsCorrect='$dto->EngMeaningIsCorrect', 
            BgMeaningIsCorrect='$dto->BgMeaningIsCorrect'
            WHERE MeaningId='$dto->SearchId'";
        $this->link->query($sqlWord);

        return $dto->SearchId;
    }

    public function delete($searchId) {
        $sqlWord = "DELETE FROM WordsMeaning WHERE MeaningId='$searchId'";
        $this->link->query($sqlWord);
    }

}

?>
