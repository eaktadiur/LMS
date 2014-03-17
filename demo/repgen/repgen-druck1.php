<?php session_start();
/* Print a report
 * repgen-druck.php for PHP Report Generator
   Bauer, 5.2.2002
   Version 0.2
*/
// this has to be an own page, because otherwise we could not get Content-type application/pdf

require_once("repgen.inc");

begin_session();

if (array_key_exists('id', $_REQUEST)){$id = $_REQUEST["id"];};
if (array_key_exists('reportnr', $_REQUEST)){$reportnr = $_REQUEST["reportnr"];};
if (!isset($reportnr))$reportnr=$id;
srand(time()); $r = rand(1,1000);
$file = "tmp/file".$r.".pdf";
page_header();
create_report($database,$host,$user,$password,$reportnr, $file);
?>
<BR><BR><BR><BR><BR><BR><BR><BR>
<H1><a href=<?php echo $file; ?>> Click on this link to get the
the PDF-file</A></H1>
</body>
</html>



