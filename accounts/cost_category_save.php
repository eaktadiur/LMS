<?php

include '../lib/DbManager.php';
$object_name = 'CostCategory';
$object_id = $object_name . 'Id';

include '../lib/master_page_save.php';



if ($result) {
    echo json_encode(array('success' => true));
} else {
    echo json_encode(array('msg' => 'Some errors occured.'));
}
?>