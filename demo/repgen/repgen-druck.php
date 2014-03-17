<?php session_start();

require_once("repgen.inc");

$url_druck = "repgen-druck1.php";
begin_session();


global $id;
if (array_key_exists('id', $_REQUEST)){$id = $_REQUEST["id"];} else $id = "";
?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Title here!</title>
</head>
<body>
<?php  page_header();
?>
  <form action="<?php echo $url_druck; ?>" method="post" target="_top">
  <input type=hidden name="reportnr" value = "<?php echo $id; ?>" >
  <BR><BR>
  <input type=submit value="<?php echo DRUCKEN; ?>" >
</form>
<?php page_footer();
?>
</body>
</html>

