<?php

include_once '../lib/DbManager.php';

class word extends DbManager {

    function __construct() {
        $this->link = $this->OpenDb();
    }

    public function getList($searchId, $start, $end) {
        $sql = "SELECT WordId, Word, Phonetic_bg, Phonetic_eng, Sound, DifficultyLevel
		FROM Words
		WHERE Word LIKE '$searchId%' ORDER BY Word LIMIT $start, $end";
        $result = $this->link->query($sql);

        return $result;
    }

    public function getcount($searchId) {
        $sql = "SELECT COUNT(*) AS count
		FROM Words
		WHERE Word LIKE '$searchId%'";
        $result = $this->link->query($sql);
        $row = $result->fetch_object();

        return $row->count;
    }

    public function getEdit($searchId) {
        $sql = "SELECT Word, Phonetic_bg, Phonetic_eng, Sound, DifficultyLevel 
                FROM Words w WHERE WordId='$searchId'";
        $result = $this->link->query($sql);
        return $result;
    }

    public function save($dto) {
        $sqlWord = "INSERT INTO Words(Word, Phonetic_bg, Phonetic_eng, Sound, DifficultyLevel ) 
            VALUES('$dto->Word', '$dto->PhoneticBangla', '$dto->PhoneticEnglish', '$dto->Sound', '$dto->DifficultyLevel')";
        $this->link->query($sqlWord);
        $lastId = mysqli_insert_id($this->link);
        return $lastId;
    }

    public function edit($dto) {
        $sqlWord = "UPDATE Words SET
            Word='$dto->Word', 
            Phonetic_bg='$dto->PhoneticBangla', 
            Phonetic_eng='$dto->PhoneticEnglish', 
            Sound='$dto->Sound', 
            DifficultyLevel='$dto->DifficultyLevel'
            WHERE WordId='$dto->SearchId'";
        $this->link->query($sqlWord);
        return $dto->SearchId;
    }

    public function delete($searchId) {
        $sqlWord = "DELETE FROM Words WHERE WordId='$searchId'";
        $this->link->query($sqlWord);
    }

}

?>
