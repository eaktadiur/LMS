    
<pre>
    <?php
    require_once 'JSON.php';
    
    if (isset($_GET['data'])) {

        //$value=array2json($_GET['data']);
        $payment_list = json_decode($_GET['data'], TRUE);
        


        //print_r($value);
        print_r($payment_list);
echo 'ajax';

        $tracking_no = $payment_list['tracking_no'];
        $bill_amount = $payment_list['bill_amount'];
        $approved_amount = $payment_list['approved_amount'];
        $paid_amount = $payment_list['paid_amount'];
        $payment_method = $payment_list['payment_method'];
        $job_details = $payment_list['job_details'];
        $remarks = $payment_list['remarks'];

        if (isset($payment_list['location_from_vendor'])) {
            $location_from_vendor = $payment_list['location_from_vendor'];
        }

        if (isset($payment_list['vendor_location'])) {
            $vendor_location = $payment_list['vendor_location'];
        }

        $payment_date = $payment_list['payment_date'];
        $vendor_indicator = $payment_list['vendor_indicator'];

        if (isset($payment_list['pay_div_acc'])) {
            $pay_div_acc = $payment_list['pay_div_acc'];
        }

        $pay_div_acc_details = '';

        if (isset($payment_list['vendor_type_id'])) {
            $vendor_type_id = $payment_list['vendor_type_id'];
        }

        if (isset($payment_list['vendor_firmid'])) {
            $vendor_firmid = $payment_list['vendor_firmid'];
        }

        if (isset($payment_list['lawyer_firmid'])) {
            $lawyer_id = $payment_list['lawyer_firmid'];
        }

        $location = $payment_list['location'];
        
        if (isset($payment_list['location_from'])) {
            $location_from = $payment_list['location_from'];
        }
        

        if (isset($payment_list['designation'])) {
            $designation = $payment_list['designation'];
        }

        if (isset($payment_list['officers_name'])) {
            $officers_name = $payment_list['officers_name'];
        }

        $payment_to = '';
        $bill_reference_no = $payment_list['bill_reference_no'];
        $approved_date = $payment_list['approved_date'];
        $bill_for_branch_div_type = $payment_list['bill_for_branch_div_type'];
        $bill_for_branch_location = $payment_list['bill_for_branch_location'];
        $pr_no = $payment_list['finance_tracking_no'];
        $materials = $payment_list['details'];
        $payment_document = $payment_list['payment_document'];
        $other_document = $payment_list['other_document'];



        die();
        query("Insert into payment_transaction 
            (tracking_no,   bill_amount, approved_amount, paid_amount, payment_method, details, remarks,location_from_vendor, vendor_location, 
            payment_date, vendor_indicator,pay_div_acc, pay_div_acc_details,vendor_type_id,vendor_firmid,lawyer_id, location, location_from, designation, officers_name, payment_to,
            bill_reference_no , approved_date,bill_for_branch_div_type, bill_for_branch_location, pr_no, materials )
    values 
        ('$tracking_no',  '$bill_amount', '$approved_amount', '$paid_amount', '$payment_method', '$job_details', '$remarks', '$location_from_vendor',  '$vendor_location', 
        '$payment_date', '$vendor_indicator','$pay_div_acc','$pay_div_acc_details','$vendor_type_id','$vendor_firmid','$lawyer_id', '$location', '$location_from',
         '$designation', '$officers_name', '$payment_to', '$bill_reference_no' , '$approved_date', '$bill_for_branch_div_type', '$bill_for_branch_location',
         '$pr_no', '$materials') ") or die("Sorry no Payment found" . mysql_error());

        $pa_id = mysql_insert_id();

        $upfilename = upload_file($_FILES, '$payment_document', "../documents/payment/payment_document/$pa_id");
        $upfilename2 = upload_file($_FILES, '$other_document', "../documents/payment/other_document/$pa_id");

        query("UPDATE payment_transaction set payment_document='$upfilename', other_document='$upfilename2' where payment_id = '$pa_id' ");

        foreach ($payment_list['Paymentsub'] as $key => $value) {
            //$payment_type = $payment_list['Paymentsub'][$key]['payment_type'];

            if (isset($payment_list['nature_job_id'])) {
                $nature_of_job = $payment_list['Paymentsub'][$key]['nature_job_id'];
            }

            if (isset($payment_list['job_id'])) {
                $job_id = $payment_list['Paymentsub'][$key]['job_id'];
            }
            if (isset($payment_list['suit_id'])) {
                $suit_no = $payment_list['Paymentsub'][$key]['suit_id'];
            }

            if (isset($payment_list['cost_center_id'])) {
                $cost_center = $payment_list['Paymentsub'][$key]['cost_center_id'];
            }

            if (isset($payment_list['cost_center_id'])) {
                $amount = $payment_list['Paymentsub'][$key]['amount'];
            }



            query("Insert into payment_transaction_suit (payment_id,  payment_type, suit_no, cost_center, amount)
            values ('$pa_id', '$nature_of_job', '$suit_no',  '$cost_center', '$amount') ") or die("Payment Details" . mysql_error());


            $suit_value = find("SELECT professional_fees, govt_cost, publication_cost, misc_others, convayence_entertainment FROM suit_info WHERE suit_info_id='$suit_no'");
            if (isset($suit_no)) {
                if ($nature_of_job == 1) {
                    sql("UPDATE suit_info set professional_fees = $suit_value->professional_fees+'$amount' where suit_info_id = '$suit_no' ");
                }
                if ($nature_of_job == 2)
                    sql("UPDATE suit_info set  govt_cost = $suit_value->govt_cost+'$amount' where suit_info_id = '$suit_no' ");
                if ($nature_of_job == 3)
                    sql("UPDATE suit_info set  publication_cost = $suit_value->publication_cost+'$amount' where suit_info_id = '$suit_no' ");
                if ($nature_of_job == 4)
                    sql("UPDATE suit_info set  misc_others = $suit_value->misc_others+'$amount' where suit_info_id = '$suit_no' ");
            }
            if ($nature_of_job == 5) {
                sql("UPDATE suit_info set  convayence_entertainment = $suit_value->convayence_entertainment+'$amount' where suit_info_id = '$suit_no'");
            }
        }

        header("Location: payment.php");

        /*
          "vendor_type_id":"",
          "officers_name":"",
          "payment_method":"",
          "payment_document":"",
          "other_document":"",

         */
    } else {
        echo 'not GET';
    }
    ?>


