<?php
function clean($str) {
		$str = @trim($str);
		if(get_magic_quotes_gpc()) {
			$str = stripslashes($str);
		}
		return $str;
	}
include("dbcon.php");
//********This Two Lines for bangla*********//
mysql_query('SET CHARACTER SET utf8');
mysql_query('SET SESSION collation_connection = utf8_general_ci') or die (mysql_error());
//*******************************************//
$word = trim($_POST[word]);
$phoneticbangla = trim($_POST[phoneticbangla]);
$phoneticenglish = trim($_POST[phoneticenglish]);
$meaningeng = trim($_POST[meaningeng]);
$meaningbg = trim($_POST[meaningbg]);
$partsofspeech = trim($_POST[partsofspeech]);
$difficultylevel = $_POST[meaningeng];
$engmeaningiscorrect = $_POST[meaningbg];
$bgmeaningiscorrect = $_POST[bgmeaningiscorrect];
/*$word = 'Accept';
$phoneticbangla = 'bangla';
$phoneticenglish = 'English';
$meaningeng = 'Eng';
$meaningbg = 'bang';
$partsofspeech = 'Adj';
$difficultylevel = 2;
$engmeaningiscorrect = 1;
$bgmeaningiscorrect = 0;*/

$rows  = array();
  $sql = "INSERT INTO `spectrumdatabase`.`Words` (`Word`, `Phonetic_bg`, `Phonetic_eng`, `DifficultyLevel`) VALUES ('$word', '$phoneticbangla', '$phoneticenglish', '$difficultylevel');";
	    $result = mysql_query($sql);
	    $sqlwordid = "select `Words`.`WordId` from `Words` WHERE TRIM(`Word`) = '$word'";
        $rswordid=mysql_query($sqlwordid);
        if( mysql_num_rows($rswordid) > 0){
		  $nt = mysql_fetch_array($rswordid);
		  $wordid = $nt[0];
		  $subsql = "INSERT INTO  `spectrumdatabase`.`WordsMeaning` (`WordId` ,`MeaningEng` ,`MeaningBg` ,`PartsOfSpeech` ,`EngMeaningIsCorrect` ,`BgMeaningIsCorrect`)
VALUES ($wordid,'$meaningeng', '$meaningbg', '$partsofspeech',  '$engmeaningiscorrect', '$bgmeaningiscorrect')";
          $result = mysql_query($subsql);
		  if($result) echo 'yes';
		    else echo 'no';
	    }//inner if
		
?>


