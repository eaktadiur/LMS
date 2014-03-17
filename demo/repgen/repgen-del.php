<?php      session_start();
/* Delete a report
 * repgen-del.php for PHP Report Generator
   Bauer, 5.2.2002
   Version 0.2
*/

/*
 *  Delete routine for Report generator repgen.
 *
 *
 * 1. A section where utility functions are defined.
 * 2. A section that is called only after the submit.
 * 3. And a final section that is called when the script runs first time and
 *    every time after the submit.
 *
 * Scripts organized in this way will allow the user perpetual
 * editing and they will reflect submitted changes immediately
 * after a form submission.
 *
 * We consider this to be the standard organization of table editor
 * scripts.
 *
 */

/* If this page is called direct, switch to index.php
*/

require_once("repgen.inc");

begin_session();
###
### Submit Handler
###

## Check if there was a submission
if (array_key_exists('id', $_REQUEST)){
     $id = $_REQUEST['id'];
     };
if (array_key_exists('attr', $_REQUEST)){
     $attr = $_REQUEST['attr'];
     };

while ( is_array($_REQUEST)
     && list($key, $val) = each($_REQUEST)) {
  switch ($key) {

  case "back":
            $url=REPGENDIR."/repgen-select.php?".SID;
            header("Location: http://$HTTP_HOST".$url);
            exit;
            break;
  case "delete":
                // deletes all records with id from table reports
            ## Get a database connection
            $db = new DB_Repgen();
            $db->connect($database,$host,$user,$password);
            $query="delete from reports where id = '".$id."'";
            $db->query($query);
            $url=REPGENDIR."/repgen-select.php?".SID."&id=".$id;
	    $url ="http://$HTTP_HOST".$url;
            header("Location: ".$url);  // switches to repgen-select.php
            exit;

          break;
  default:
  break;
 }
}
?>
<html>


<?php

page_header();
### Output key administration forms, including all updated
### information, if we come here after a submission...
?>

<strong><?php echo DESCRIPT ?></strong>
</center> <br>
<br>
<font color ="#FF0000"  size=6>
<center>
<?php
 echo DEL_REALLY;
 switch (substr($id,0,1)){
   case 'B': echo DEL_BLOCK;
             break;
   case 'F': echo DEL_FUNC;
             break;
   default:  echo DEL_REPORT;
             break;
   }

 $h= explode("|",$attr);echo "  ".$h[3]."  "; /* longname of report*/ 
 echo DEL_DELETE ;
?> 
<BR> <BR><BR>
 <form name="edit" method="post" action="<?php echo "repgen-del.php?".SID."&id=$id";?>">
 <center><table>
   <tr valign=middle align=left>
    <td algin=right>
        <input type="submit" name="delete" value="<?php echo DEL_BACK; ?>" align="left" >
        <input type="submit" name="back" value="<?php echo BACK; ?>" align="center">
        <input type="hidden" name="id" value = "<?php echo $id; ?>" >

    </td>
   </tr>
 </table>
 </center>
 </form>

</center>
<?
page_footer();
?>
</body>
</html>
