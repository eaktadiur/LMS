<?php

include_once '../lib/DbManager.php';

class meaningSentence extends DbManager {

    function __construct() {
        $this->link = $this->OpenDb();
    }

    public function getList($meaningId) {
        $sql = "SELECT SentenceId, MeaningId, Sentence,
        (CASE WHEN IsCorrect =1 THEN 'Yes' ELSE 'No' END) AS IsCorrect
        FROM Sentences  WHERE MeaningId='$meaningId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function getEdit($searchId) {
        $sql = "SELECT Sentence, (CASE WHEN IsCorrect=1 THEN 'Yes' ELSE 'No' END) AS IsCorrect
        FROM Sentences WHERE SentenceId='$searchId'";
        $result = $this->link->query($sql);

        return $result;
    }
    
    public function getMeaning($meaningId) {
        $sql = "SELECT SentenceId, Sentence, w.MeaningEng, wd.Word,
            (CASE WHEN IsCorrect =1 THEN 'Yes' ELSE 'No' END) AS IsCorrect
            FROM Sentences s
            LEFT JOIN WordsMeaning w ON w.MeaningId=s.MeaningId
            LEFT JOIN Words wd ON wd.WordId=w.WordId
            WHERE s.MeaningId='$meaningId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function getWordNameById($searchId) {
        echo $sql = "SELECT Word, Phonetic_bg, Phonetic_eng, Sound, DifficultyLevel 
            FROM Words WHERE WordId='$searchId'";
        $result = $this->link->query($sql);

        return $result;
    }

    public function save($meaningId, $Sentence, $Correct) {
        $sqlMeaning = "INSERT INTO Sentences(MeaningId, Sentence, IsCorrect) 
            VALUES('$meaningId', '$Sentence', '$Correct')";
        $this->link->query($sqlMeaning);
        $lastId = mysqli_insert_id($this->link);

        return $lastId;
    }

    public function edit($searchId, $Sentence, $Correct) {
        $sqlWord = "UPDATE Sentences SET
            Sentence='$Sentence', 
            IsCorrect='$Correct' 
            WHERE SentenceId='$searchId'";
        $this->link->query($sqlWord);

        return $searchId;
    }

    public function delete($searchId) {
        $sqlWord = "DELETE FROM Sentences WHERE SentenceId='$searchId'";
        $this->link->query($sqlWord);
    }

}

?>
