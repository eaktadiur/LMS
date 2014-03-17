<?php
session_start();
/* Main Routine index.php for PHP Report Generator 
  Bauer, 22.5.2001
  Version 0.1
  Changed Version 0.45  14.11.2007
 */
if (isset($_REQUEST['database1'])) { /* second call of this page */
    $database1 = $_REQUEST["database1"];
    $host1 = $_REQUEST["host1"];
    $user1 = $_REQUEST["user1"];
    $password1 = $_REQUEST["password1"];
    $msg = $_REQUEST["msg"];
    $HTTP_HOST = $_SERVER["HTTP_HOST"];
} else { /* first call of this page */
    $database1 = $host1 = $user1 = $password1 = $msg = '';
}

require_once("repgen.inc");




if (array_key_exists('msg', $_REQUEST) && !empty($_REQUEST['msg'])) {
    $msg = ERROR_CONNECT;
} else {
    $msg = '';
}


$HTTP_HOST = $_SERVER["HTTP_HOST"];

if (!(empty($database1) || empty($host1) || empty($user1) || empty($password1)) && empty($msg)) {
    // test, if you can connect to database 
    $db = new DB_Repgen;
    $db->set_variables($database1, $host1, $user1, $password1);
    $db->Halt_On_Error = "report"; // calls index.php with database error in $msg in case of db_Error
    $db->connect($database1, $host1, $user1, $password1);

    // if I cannot connect, I continue with index.php and a message in $msg 
    if (empty($db->Errno)) {
        $db->query("select * from reports where id = '0000000000'");
        $db->Halt_On_Error = "yes"; // calls index.php with error-message
        // there is a connection 
        $_SESSION["database"] = $database = $database1;
        $_SESSION["host"] = $host = $host1;
        $_SESSION["user"] = $user = $user1;
        $_SESSION["password"] = $password = $password1;

        // first there is all work to be done because a submit buttons has been punched 
        while (is_array($_REQUEST) && list($key, $val) = each($_REQUEST)) {

            switch ($key) {
                ## Create Report 
                case "create":
                    // create a new report Id 
                    $dbn = new DB_Repgen;
                    $dbn->connect($database, $host, $user, $password);
                    $dbn->query("select typ,id from reports where typ = 'info' order by id");
                    while ($dbn->next_record()) {
                        $n = $dbn->f("id");
                    }
                    $n = $n + 1;
                    $url = REPGENDIR . "/repgen-create.php?" . SID;
                    $url.="&id_neu=$n&short=&long=&author=&group=&sql=&print_format=&print_size=&report_type=&id=&group_type=";
                    header("Location: http://$HTTP_HOST" . $url);  // switches to repgen_create.php 
                    exit;
                    break;

                case "select":
                    // select a stored report for altering 
                    $url = REPGENDIR . "/repgen-select.php?" . SID;
                    header("Location: http://$HTTP_HOST" . $url);  // switches to repgen_select.php 
                    exit;

                    break;


                default:

                    break;
            }
        } if (array_key_exists('msg', $_REQUEST)) {
            $msg = "hallo bauer"; //ERROR_CONNECT;
        } else {
            $msg = '';
        }
    }   // of if (empty($db->Errno) 
    else {
        $msg = ERROR_CONNECT;
    }
} // of if variables set 
?> 

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">  
<html> 


<?php page_header(); ?> 

    <strong><?php echo FIRST; ?></strong> 
<?php
if (!empty($msg)) {   // Error Message: No connect to database 
    my_error($msg);
    $msg = NULL;
}
?> 
    <br> <br> 

    <form action="index.php?" method = "post"> 
        <TABLE> 

            <TR> <TD align = "right"> <?php echo DATABASE; ?> </TD> <TD> <input type=text name="database1" value ="<?php echo $database1; ?>"></TD></TR> 
            <TR> <TD align = "right"> <?php echo HOST; ?> </TD> <TD> <input type="text" name="host1" value = "<?php echo $host1; ?>" ></TD></TR> 
            <TR> <TD align = "right">  <?php echo USER; ?> </TD> <TD> <input type="text" name="user1" value = "<?php echo $user1; ?>"></TD></TR> 
            <TR> <TD align = "right"> <?php echo PASS; ?> </TD> <TD> <input type=password name="password1" value="<?php echo $password1; ?>"></TD></TR> 
        </table> 
        <br> 
        <input type="hidden" name="msg" value="<?php echo $msg; ?>"> 
        <input type="submit" value="<?php echo CREATE; ?>" name="create"> 
        <br> <br> 
        <br> 

        <input type="submit" value= "<?php echo SELECT; ?>" name="select" > 
    </form> 
</center> 
<?php page_footer(); ?> 
</body> 
</html> 
