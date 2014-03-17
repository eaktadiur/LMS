<?php
include '../lib/DbManager.php';


$val = getParam('val');


query("DELETE FROM file_attach_list WHERE FILE_ATTACH_LIST_ID='$val'");


?>