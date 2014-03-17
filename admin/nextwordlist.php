<?php
include("dbcon.php");
//********This Two Lines for bangla*********//
mysql_query('SET CHARACTER SET utf8');
mysql_query('SET SESSION collation_connection = utf8_general_ci') or die (mysql_error());
//*******************************************//
$rows = array();

//$word = 'ill';
if(isset($_POST['currentid']))
  $currentid = $_POST['currentid'];
else $currentid = 21;
$sql = "SELECT  `Words`.`WordId` ,  `Word` ,  `Phonetic_bg` ,  `Phonetic_eng` ,  `MeaningEng` ,  `MeaningBg` ,  `PartsOfSpeech` ,  `DifficultyLevel` FROM  `Words` INNER JOIN  `WordsMeaning` ON  `Words`.`WordId` =  `WordsMeaning`.`WordId` WHERE  `Words`.`WordId` > $currentid ORDER BY  `Words`.`WordId` ASC LIMIT 1";
	$result = mysql_query($sql);
    if( mysql_num_rows($result) > 0){
	    while($nt = mysql_fetch_array($result)){
			$rows[] = $nt;
		}
	  }
	  else{
	  $rows[] = 0;
	  }		
	  
	echo json_encode($rows);
?>
