<?php
include_once '../lib/DbManager.php';

$userlist = getUserList($companyId); //Fetch information for all leads

require_once("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a> <span class="divider">/</span>
                <a href="#">User List</a>
            </h3>
        </div>
        <div class="box-content">
            <?php //echo resultBlock($errors, $successes); ?>
            <form name='leads' action="<?php echo $_SERVER['PHP_SELF'] ?>" method='post' id="leads">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <th>User Name</th>
                    <th>Access Level</th>
                    <th>Phone</th>
                    <th>Status</th>
                    <th>Action</th>
                    </thead>

                    <tbody>
                        <?php
                        while ($row = $userlist->fetch_object()) {
                            echo "<tr>";
                            echo "<td>" . $row->UserName . "</td>";
                            echo "<td>" . $row->UName . "</td>";
                            echo "<td>" . $row->Phone . "</td>";
                            echo "<td>" . $row->IsActive . "</td>";
                            echo "<td class='center'>";
                            echo "<a href='#'>View</a> | ";
                            echo "<a href='user_create.php?mode=edit&searchId=$row->UserTableId&UserName=$row->UserName'>Edit</a>";
                            echo "</td>";
                            echo "</tr>";
                        }
                        ?>
                    </tbody>
                </table>

                <div class="form-actions">
                    <a class="btn btn-primary" href="user_create.php?mode=new">
                        <i class="icon-white icon-plus-sign"></i> 
                        Add New
                    </a>
                    <button type="button" class="btn btn-primary" onclick="goBack();">
                        <i class="icon-white icon-arrow-left"></i> 
                        Go Back
                    </button>
                </div>  
            </form>    
        </div>
    </div><!--/span-->

</div>	

<?php include('../body/footer.php'); ?>



