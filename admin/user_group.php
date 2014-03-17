<?php 
include_once '../Index/header.php'; 
include '../../MyProject_DAL/Admin_DAL.php';

$admin_DAL=new Admin_DAL();

$main_menu=$admin_DAL->Get_Sys_Menu();
$main_menu2=$admin_DAL->Get_Sys_Menu2();
?>
<h2>System Menu</h2>
<pre>
<?php 
foreach ($main_menu2 as $key => $value) {
    echo"<ul>";
    echo "<li>"; 
    echo $value['name']; 
    foreach ($main_menu2 as $key => $value) {
        
    }
    echo"</li>";
    echo"</ul>";
}

print_r($main_menu2);

?>





<?php include_once '../Index/footer.php';?>