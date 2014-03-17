<?php

include_once '../lib/DbManager.php';

include '../body/header.php';
?>
<script type="text/javascript" src="include.js"></script>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Inventory Index</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="easyui-layout" style="width:100%; height:700px;">  
                <div data-options="region:'center'">  
                    <div class="easyui-accordion" data-options="fit:true,border:false,plain:true">  
                        <div title="District List">  
                            <table class="" id="dataGrid" data-options="fit:true,fitColumns:true"></table> 
                        </div>  
                    </div>  
                </div>  
            </div>


        </div>
    </div><!--/span-->

</div>	




<?php

include '../body/footer.php';
?>