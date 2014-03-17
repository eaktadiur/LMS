<?php
echo '<head>
<title>
Your title
</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>';
include("dbcon.php"); 

if(isset($_POST['Word']))
  {
   echo "Worked";
   $sql1="INSERT INTO Words (Word,Phonetic_eng,Phonetic_bg,DifficultyLevel) VALUES ('$_POST[Word]','$_POST[PhoneticEnglish]','$_POST[PhoneticBangla]','$_POST[DifficultyLevel]')";
   if (!mysql_query($sql1,$con))
   {
        die('Error: ' . mysql_error());
   }
   $sql2="SELECT WordId from Words where Word='$_POST[Word]'";
   echo $sql2;
   $result = mysql_query($sql2);
   $row = mysql_fetch_array($result);
   echo $row['WordId'];
   $sql="INSERT INTO WordsMeaning (WordId,MeaningEng,MeaningBg,PartsOfSpeech,EngMeaningIsCorrect,BgMeaningIsCorrect)
  VALUES 
  (".$row['WordId'].",'$_POST[MeaningEng]','$_POST[MeaningBg]','$_POST[PartsOfSpeech]','$_POST[EngMeaningIsCorrect]','$_POST[BgMeaningIsCorrect]')";
  echo $sql;
  if (!mysql_query($sql,$con))
  {
  die('Error: ' . mysql_error());
  }
  mysql_close($con);
   }
else {
echo '<div align="left"style="position:absolute;top:100px;left:100px;height:100%;width:790px;color:#000011; background-color:#fefefe;; border:none; border-color:#008080" >';
 echo '<form action="WordsMeanings.php" onsubmit="return validate_form(this);"method="post">

Word:&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="text" name="Word" /><font color=red >*</font>
<br/><br/>
DifficultyLevel:
<input type="number" name="DifficultyLevel" /><font color=red >*</font>
<br/><br/>
PhoneticEnglish:&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="text" name="PhoneticEnglish" /><font color=red >*</font>
<br/><br/>
PhoneticBangla:&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="text" name="PhoneticBangla" /><font color=red >*</font>
<br/><br/>
MeaningEng:&nbsp&nbsp&nbsp&nbsp&nbsp
<textarea name="MeaningEng" cols="30" rows="2"></textarea><font color="red" size="6px">*</font>
<br/><br/> 
MeaningBg:&nbsp&nbsp&nbsp&nbsp&nbsp
<textarea name="MeaningBg" cols="30" rows="2"></textarea><font color="red" size="6px">*</font>
<br/><br/>
PartsOfSpeech:&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="text" name="PartsOfSpeech" /><font color=red >*</font>
<br/>
EngMeaningIsCorrect:<input type="checkbox" name="EngMeaningIsCorrect" value="1" checked="checked"/>
 <br/>
 BgMeaningIsCorrect:<input type="checkbox" name="BgMeaningIsCorrect" value="1" checked="checked"/>
<br/><br/>

<button class="orange">Insert</button>
</form> ';
echo '</div>';
}
 ?>