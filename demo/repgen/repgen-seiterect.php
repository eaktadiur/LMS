<?php session_start();
/*
 *  Werner Bauer
 *  5.2.2002
 *  file: repgen-seite.php
*   Changed 19.11.2002 Version 0.44: Report Header and footer
 *
 *  item definition routine for Report generator repgen.
 *
 *  shows all items of a report and enables creation of an item
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



require_once("repgen.inc");


function m_s($a1,$a2)
{   // sets "selected" in select box when $a1 == $a2
   if ($a1 == $a2)  return "selected";

}



function get_parameters() { // reads some parameters from the http-pages
global $sel_art, $sel_typ;
global $x1, $y1, $x2, $y2, $width, $long, $report_type, $bgcolor;
global $alternate, $attrib, $attriba,$id_neu, $id1;
if (array_key_exists('sel_art', $_REQUEST)){$sel_art = $_REQUEST["sel_art"];} else $sel_art = "";
if (array_key_exists('alternate', $_REQUEST)){$alternate = $_REQUEST["alternate"];} else $alternate = "";

if (array_key_exists('sel_typ', $_REQUEST)){$sel_typ = $_REQUEST["sel_typ"];};
if (array_key_exists('attrib', $_REQUEST)){$attrib = $_REQUEST["attrib"];};
if (array_key_exists('attriba', $_REQUEST)){$attriba = $_REQUEST["attriba"];};
if (array_key_exists('id1', $_REQUEST)){$id1 = $_REQUEST["id1"];};
if (array_key_exists('id_neu', $_REQUEST)){$id_neu = $_REQUEST["id_neu"];};
if (array_key_exists('x1', $_REQUEST)){$x1 = $_REQUEST["x1"];};
if (array_key_exists('y1', $_REQUEST)){$y1 = $_REQUEST["y1"];};
if (array_key_exists('x2', $_REQUEST)){$x2 = $_REQUEST["x2"];};
if (array_key_exists('y2', $_REQUEST)){$y2 = $_REQUEST["y2"];};
if (array_key_exists('width', $_REQUEST)){$width = $_REQUEST["width"];};
if (array_key_exists('long', $_REQUEST)){$long = $_REQUEST["long"];};
if (array_key_exists('report_type', $_REQUEST)){$report_type = $_REQUEST["report_type"];};
if (array_key_exists('bgcolor', $_REQUEST)){$bgcolor = $_REQUEST["bgcolor"];};

}

/* If this page is called direct, switch to index.php
*/
  begin_session();

  get_session_data();

if ((empty($database) || empty($host)|| empty($user) || empty($password))) {
                         // not all fields have values
            $url=REPGENDIR."/index.php?".SID;
            header("Location: http://$HTTP_HOST".$url);  // switches to repgen-index.php back
            exit;

}



###
### Submit Handler
###

## Check if there was a submission
  begin_session();

  get_session_data();
  get_parameters();

## Get a database connection
  $db = new DB_Repgen;
  $db->connect($database,$host,$user,$password);


while ( is_array($_REQUEST)
     && list($key, $val) = each($_REQUEST)) {
  switch ($key) {

      // go back 
  case "back":
            $url=REPGENDIR."/repgen-seitel.php?".SID;
            header("Location: http://$HTTP_HOST".$url);  // switches to page 'select a report'
            exit;

          break;
  case "delete":
                // deletes item from table reports
           $query= "delete from reports where (id ='$id1' and attrib = '$attrib')";

           $db->query($query);
          break;
  case "insert":
               //  inserts item into table reports
                      // test the input 
            $attrib1 = $sel_typ."|".$sel_art."|".$width."|".$x1."|".$y1."|".$x2."|".$y2."|||||||||";
            if (!(empty($id_neu) or empty($width) or empty($x1) or empty($y1) or empty($x2) or empty($y2)))  {

                  // does item exist already?
                  if ($alternate == "true") {
                       $query = "delete from reports where (id = '".$id_neu."' and attrib ='".$attriba."' and typ='item')";
                       $db->query($query);
                       $alternate = "false";
                  }

                  $query = "select * from reports where (id = '".$id_neu."' and attrib ='".$attrib1."' and typ='item')";
                  $db->query($query);
                  if ($db->num_rows() == 0 ) { // it is new item, store it
                      $query = "insert into reports values('$id_neu','item','$attrib1')";
                      $db->query($query);
                      $error= NULL;
                  };
               }
             else $error= ERROR_LEER_LINE;
          break;
  case "druck":
             //  make a test print
          // The submit button "druck" creates a link to repgen-druck with onClick - Event
          // to the javascript function wopen()
          break;
  case "alter":
               //  alters item into table reports
                  $alternate = "true";
                  $h = explode("|",$attrib);
                  $sel_typ=$h[0];
                  $sel_art = $h[1];
                  $width = $h[2];
                  $x1 = $h[3];
                  $y1 = $h[4];
                  $x2 = $h[5];
                  $y2 = $h[6];
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

if (stristr($_SERVER['HTTP_USER_AGENT'],"MSIE")) {
     $url="http://$HTTP_HOST".REPGENDIR."/repgen-druck.php?".SID; // Aufruf f�r MSIE5
} else  {
     $url="http://$HTTP_HOST".REPGENDIR."/repgen-druck1.php?".SID; // aufruf f�r andere Browser
}
$url .="&id=".$id_neu;

?>
<script language="javascript"><!--
function num_test(feld) {
if (isNaN(feld.value) == true)
{ alert("Use only Numbers here!");
 feld.focus();
 return (false); }
}
function wopen() {
        window2=open("<?php echo $url; ?>","PDFWindow",   "");
}
//--></script>

<center>
<strong><?php if (!empty($long)) echo ITEM_DEF."'".$long."'"; else echo ITEM_DEF; ?></strong>
</center>
<H3> <?php echo ITEM_RECT; ?> </H3>
<?php if (!empty($error))
    my_error($error);
?>
<br>
<?php

?>
  <form action="<?php $h="repgen-seiterect.php?".SID; echo $h; ?>" method="POST">
    <table border = 0>
      <TR>
        <TD>
          <B><?php echo IT_ART.":"; ?></B>
<?php if ($report_type == "single") { ?>
          <select name="sel_art" size="1" >
           <option value="DE"  selected >Detail</option>
          </select>
<?php  } else {  ?>

          <select name="sel_art" size="1" >
           <option value="RH" <?php echo m_s("RH",$sel_art); ?>>Report Header</option>
           <option value="PH" <?php echo m_s("PH",$sel_art); ?>>Page Header</option>
           <option value="GH"  <?php echo m_s("GH",$sel_art); ?>>Group Header</option>
           <option value="DE"  <?php echo m_s("DE",$sel_art); ?>>Detail</option>
           <option value="GF"  <?php echo m_s("GF",$sel_art); ?>>Group Foot</option>
           <option value="PF"  <?php echo m_s("PF",$sel_art); ?>>Page Foot</option>
           <option value="RF"  <?php echo m_s("RF",$sel_art); ?>>Report Footer</option>
          </select>
<?php   }  ?>
        </TD>

        <TD>
          <B><?php echo IT_X1; ?>:</B>
          <input type="text" name="x1" size="4" maxlength="4" value="<?php if (isset($x1)) { echo $x1; } ?>" onBlur="num_test(this);">
        </td>
        <TD>
          <B><?php echo IT_Y1; ?>:</B>
          <input type="text" name="y1" size="4" maxlength="4" value="<?php if (isset($y1)) { echo $y1; } ?>" onBlur="num_test(this);">
        </td>
        <TD>
          <B><?php echo IT_WIDTH; ?>:</B>
          <input type="text" name="x2" size="4" maxlength="4" value="<?php if (isset($x2)) { echo $x2; } ?>" onBlur="num_test(this);">
        </td>
        <TD>
          <B><?php echo IT_HEIGHT;?>:</B>
          <input type="text" name="y2" size="4" maxlength="4" value="<?php if (isset($y2)) { echo $y2; } ?>" onBlur="num_test(this);">
        </td>
        <TD>
          <B><?php echo IT_LINE;?>:</B>
          <input type="text" name="width" size="4" maxlength="4" value="<?php if (isset($width)) { echo $width; } ?>" onBlur="num_test(this);">
        </td>
    </TR>
         <input type="hidden" name="id_neu" value="<?php echo $id_neu; ?>" >
          <input type="hidden" name= "sel_typ" value = "Rect" >
</table>
<br>
<br>
<table><tr><td >
<center>
<input name="insert" type="submit" value="<?php echo IT_STORE; ?>" >
</center>
</TD>

<td>
<input name="back" type="submit" value="<?php echo BUTTON_BACK; ?>"  >
</td>
<td>
<?php
       if (!((substr($id_neu,0,1) == 'B')||(substr($id_neu,0,1 ) == 'F'))){ // Only show test button for reports
       ?>

<input name="druck" type="submit" value="<?php echo IT_DRUCK; ?>" onClick="wopen()" >
<?php } ?>
</td>
</TR>
</table>
</center>
<HR size=5>
<input type = "hidden" name = "alternate" value = "<?php echo $alternate; ?>" >
<input type = "hidden" name = "attriba" value = "<?php echo $attrib; ?>" >

 
</form>
<!--        End of input item form   -->
<!--------------------------------------------------------------------->
<center>
<strong><?php echo ITEM_HEAD; ?></strong>
</center> <br>

<table border=0 bgcolor="#eeeeee" align="center" cellspacing=2 cellpadding=2 width=540>
 <tr valign=top align=left bgcolor = <?php echo BGCOLORH; ?>>
  <th><?php echo IT_TYP; ?></th>
  <th><?php echo IT_ART; ?></th>
  <th><?php echo IT_FONT; ?></th>
  <th><?php echo IT_FONT_SIZE; ?></th>
  <th><?php echo IT_LEN; ?></th>
  <th><?php echo IT_STRING; ?></th>
  <th><?php echo IT_X1; ?></th>
  <th><?php echo IT_Y1; ?></th>
  <th><?php echo IT_X2; ?></th>
  <th><?php echo IT_Y2; ?></th>
  <th><?php echo IT_WIDTH; ?></th>
  <th cellspan=2>Action</th>
 </tr>
<?php

  ## Traverse the result set

 $query="select  * from reports where (typ = 'item' and id='".$id_neu."') order by attrib";

  $db->query($query);
  $line= 0;   // line-number
  while ($db->next_record()){
    $h = explode("|",$db->f("attrib"));
    $it_typ=$h[0];
    $it_art = $h[1];
    $it_font = $h[2];
    $it_fontsize = $h[3];
    $it_zahl = $h[4];
    $it_x1 = $h[5];
    $it_y1 = $h[6];
    if ($it_typ == "String" or $it_typ == "DB" or $it_typ == "Term")   $it_str = $h[7];
    $line ++;
    $bgcolor = BGCOLOR1;     // define the color of the row
    $line % 2  ? 0: $bgcolor = BGCOLOR2;
   
?>
 <!-- existing items -->
 <form name="edit" method="post" action="<?php echo "repgen-seitel.php?".SID; ?>">
 <tr valign=middle align=left bgcolor = "<?php echo $bgcolor; ?>">
    <td> <?php echo $it_typ; ?> 
           <input type="hidden" name="id1" value="<?php echo $id_neu; ?>">
           <input type="hidden" name="attrib" value="<?php echo $db->f("attrib"); ?>">           
    </TD>
    <td> <?php echo $it_art; ?></TD>
    <?php if (in_array($it_typ , array("String","DB","Term"))) {
     ?>
    <td> <?php echo $it_font; ?></TD>
    <td> <?php echo $it_fontsize; ?></TD>
    <td> <?php echo $it_zahl; ?></TD>
    <td> <?php echo $it_str; ?></TD>
    <td> <?php echo $it_x1; ?></TD>
    <?php if ($it_y1 != "") echo " <td>". $it_y1."</TD>";
          else                echo "<TD>.</TD>";
     ?>

    <?php
    } else {
    ?>
    <td>.</td> <td>.</td><td>.</td> <td>.</td>
    <td> <?php echo $it_fontsize; ?></TD>
    <td> <?php echo $it_zahl; ?></TD>

    <?php
    } ?>
    

    <?php if ( in_array($it_typ, array("String","DB","Term","Block","Textarea"))) {
     ?>

           <td>.</td> <td>.</td><td>.</td>
    <?php
    } else {
    ?>
            <td> <?php echo $it_x1; /* width */?></TD>
            <td> <?php echo $it_y1; /* X2 */?></TD>
            <td> <?php echo $it_font; /* y2 */?></TD>
    <?php
    }
    ?>
    <TD>
        <input type="submit" name="delete" value="<?php echo DELETE ?>" align="center">
      </td>
<?php if (in_array($it_typ,array("Rect"))) { ?>
    <TD>
        <input type="submit" name="alter" value="<?php echo CHANGE; ?>" align="center">
      </td>
<?php
}
?>
</tr>
 </form>

<?php

 }  // end of while

?>
</table>
<?php page_footer(); ?>

</body>
</html>
