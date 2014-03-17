<?php
/* Include Datei repgen-def.inc for PHP Report Generator
   Bauer, 09.11.2002
   Version 0.44
*/
///////////////////////////////////////////////////////////////
define("DBDRIVER","db-mysql.inc");  // db-Driver
//define("DBDRIVER","db-pgsql.inc");  // db-Driver
//define("DBDRIVER","db-odbc.inc");  // db-Driver
///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
define("REPGENDIR","/repgen");  // Directory of Repgen, should be altered if you use another directory
//////////////////////////////////////////////////////////////////////////
define ("LANGUAGE","repgen-const-english.inc");  // Text for english language
//define ("LANGUAGE","repgen-const-german.inc");   // text for german language
//////////////////////////////////////////////////////////////////////////
require_once(DBDRIVER);
require_once(LANGUAGE);
define("VERSION","Version 0.45 Beta");    // Version Number 

 
// Definition of a Database class to test connection 
 
class DB_Repgen extends DB_Sql { 
  var $classname = "DB_Repgen"; 

  function set_variables($d,$h,$u,$p)
  {   // sets the variables for DB-Connection 
      $this->Host = $h; 
      $this->Database = $d; 
      $this->User = $u; 
      $this->Password = $p; 
  } 
 

  function haltmsg($msg) 
  {    // does not stop the work, switches to index.php
          $http_host = $_SERVER["HTTP_HOST"]; 
          $m1 = "<B>Database Error: </B>".$msg." ".DATABASE." Error: ".$this->Error; 
          $m = urlencode($m1); 
          $url=REPGENDIR."/index.php?".SID."&msg=".$m;
          $url=$url."&host1=".$this->Host; 	  
	  $url=$url."&database1=".$this->Database;
	  $url=$url."&user1=".$this->User;
	  $url=$url."&password1=".$this->Password;          
	  header("Location: http://$http_host".$url);  // switches to index.php 
          exit; 
  } 

} 
// Definition of a Database Class to report DB-Errors 
class DB_Rep extends DB_Sql { 
  var $classname = "DB_Rep"; 
  var $Host      = ""; 
  var $Database  = ""; 
  var $User      = ""; 
  var $Password  = ""; 
  var $error; 
  function get_error() 
  { // report the error-condition 
    return $this->error; 
  } 
 
  function set_variables($d,$h,$u,$p) 
  {  // sets the variables for DB-Connection 
      $this->Host = $h; 
      $this->Database = $d; 
      $this->User = $u; 
      $this->Password = $p; 
      $this->error = false; 
  } 

  function haltmsg($msg)
  { 
 
          $m = "<B> ".DATABASE." Error: </B> ".$this->Error; 
          echo '<table border=0 bgcolor="#eeeeee" align="center" cellspacing=0 cellpadding=4 width=540>'; 
          echo '<tr><td><font color=#FF2020>'; 
          echo $m; 
          echo "</font></td>   </tr>   </table>  <BR>"; 
          $this->error = true; 
  }
   
}    // end of class DB_Rep 
 
// Header of all Pages 
 
function page_header() 
{   // page header for all pages of the application 
 echo "<head><title>Report Generator REPGEN</title>  <style type=\"text/css\">"; 
 echo "<!-- body { font-family: Arial, Helvetica, sans-serif } td   { font-family: Arial, Helvetica, sans-serif ;width : \"10%\";font-size:\"10pt\"}"; 
 echo "   th   { font-family: Arial, Helvetica, sans-serif }   -->"; 
 echo " </style>  </head> <body bgcolor=\"#E4D6C0\"> <center> "; 
 echo "<h1>Report Generator REPGEN</h1>"; 
 echo VERSION."<br><br> "; 
 
 
} 
 
// Footer of all pages 
 
function page_footer() 
{     // page footer for all pages of the application 
 
} 
?>
