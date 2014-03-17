<?php

/*
  UserCake Version: 2.0.2
  http://usercake.com
 */

require_once("admin/models/config.php");


//Forms posted
if (!empty($_POST)) {


    $errors = array();
    $fname = trim($_POST["fname"]);
    $lname = trim($_POST["lname"]);
    $address = trim($_POST["address"]);
    $city_state_zip = trim($_POST["city_state_zip"]);
    $phone = trim($_POST["phone"]);
    $mobile = trim($_POST["mobile"]);
    $fax = trim($_POST["fax"]);
    $email = trim($_POST["email"]);
    $afname = trim($_POST["afname"]);
    $alname = trim($_POST["alname"]);
    $aemail = trim($_POST["aemail"]);
    $arelation = trim($_POST["arelation"]);
    $aphone = trim($_POST["aphone"]);
    $event_date = date("Y-m-d H:i:s");

    //$event_date = trim($_POST["event_date"]);
    $captcha = md5($_POST["captcha"]);
    $event_type = trim($_POST["event_type"]);





    if ($captcha != $_SESSION['captcha']) {
        $errors[] = lang("CAPTCHA_FAIL");
    }
    if ($fname == "") {
        $errors[] = lang("WEBFORM_SPECIFY_FIRST_NAME");
    }
    if ($lname == "") {
        $errors[] = lang("WEBFORM_SPECIFY_LAST_NAME");
    }
    if ($address == "") {
        $errors[] = lang("WEBFORM_SPECIFY_ADDRESS");
    }
    if ($city_state_zip == "") {
        $errors[] = lang("WEBFORM_SPECIFY_CITY_STATE_ZIP");
    }



    if ($phone == "") {
        $errors[] = lang("WEBFORM_SPECIFY_PHONE");
    }
    if ($email == "") {
        $errors[] = lang("WEBFORM_SPECIFY_EMAIL");
    }


    // if(eventExists($email))
    // {
    // $errors[] = lang("ACCOUNT_EMAIL_IN_USE",array($email));
    // }



    if (!isValidEmail($email)) {
        $errors[] = lang("ACCOUNT_INVALID_EMAIL");
    }


    if ($event_type == "") {
        $errors[] = lang("WEBFORM_SPECIFY_Event_Type");
    }

    //End data validation
    if (count($errors) == 0) {

        //Construct a user object
        $event = new events($fname, $lname, $address, $city_state_zip, $phone, $mobile, $fax, $email, $afname, $alname, $aemail, $arelation, $aphone, $event_date, $event_type
        );



        // print $fname . ' lname ' . $lname . ' address ' . $address . ' city zip ' . $city_state_zip . ' phone ' . $phone . ' mobile ' . $mobile
        // . ' fax ' . $fax . ' email ' . $email; 
        // print '</p>';
        // print $afname . ' alname ' . $alname . ' aemail ' . $aemail . ' relation ' . $arelation . ' aphone ' . $aphone . ' event date ' . $event_date
        // . ' event type ' . $event_type ; 	
        //Attempt to add the user to the database, carry out finishing  tasks like emailing the user (if required)
        if (!$event->AddEvent()) {
            print $event->sqlerror;


            //if($lead->mail_failure) $errors[] = lang("MAIL_ERROR");

            if ($event->sql_failure)
                $errors[] = lang("SQL_ERROR");
        }
    }

    if (count($errors) != 0) {
        print 'error';
    }


    if (count($errors) == 0) {
        $successes[] = $event->success;
    }
}
?>