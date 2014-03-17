<?php
include_once '../lib/DbManager.php';

$object_name = 'CostCategory';
$object_id = $object_name . 'ID';
include '../body/header.php';



include '../lib/master_page.php';
?>
<br/><br/>
<input type="hidden" name="object_name" id="object_name" value="<?php echo $object_name; ?>"/>
<input type="hidden" name="object_id" id="object_id" value="<?php echo $object_id; ?>"/>
<script type="text/javascript" src="cost_category.js"></script>

<div title="Cost Category List" class="easyui-panel">  
    <table id="dataGrid"></table> 
</div>  

<div id="toolbar" style="padding:5px;height:auto">  
    <div id="toolbar">
        <button class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="AddNew();">Add New</button>
        <button class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="Edit();">Edit</button>
        <button class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="Remove();">Remove</button>
    </div>
</div>





<?php include '../body/footer.php'; ?>