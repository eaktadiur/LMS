<?php
include '../Index/header.php';
include '../../MyProject_DAL/Payment_DAL.php';

$payment = new Payment_DAL();

$ledger_list = $payment->PaymentLedger($companyid);
?>

<script>
    $(document).ready(function(){
        $('#pay_sub').dataTable({
            "bJQueryUI": true,
            "bLengthChange": false,
            "bFilter": false,
            "bInfo": false,
            "bSort": false,
            "sDom":'T<"clear"><"H"lfr>t<"F"ip>',
            "oTableTools": {
                "sRowSelect": "single",
                "aButtons": [ ]
            },
            "aoColumnDefs": [
                { 
                    "bVisible": false, 
                    "aTargets": [] 
                }
            ]
                    
        });
                
                
        $('#add').click(function(){
            
            var cost_center_id='';
            var suit_id='';
            
            var payment_type=$('input:checked').val();
            var pa_id=$('#pa_id').val();
         if(payment_type==2){
                cost_center_id=$('#costCenter_id').val();
                if(cost_center_id==null || cost_center_id==''){
                    alert('Select Firm Name');
                    return false;
                }
                var subName=$('#costCenter_id option:selected').html();
            }else{
                alert('Select Payment Suit');
                return false;
            }
            
            
            
            var nature_job_id=$('#nature_of_job').val();
            
           
            var job_title=$('#job_title option:selected').html();
            var job_id=$('#job_title').val();
            var amount = $('#amount').val();
            
             
            
            if(job_id==null || job_id==''){
                alert('Select Job Titel');
                return false;
            }
            if(amount==''){
                alert('Enter Amount');
                return false;
            }
            
            $('#pay_sub').dataTable().fnAddData([
                payment_type,
                nature_job_id,
                job_id,
                job_title,
                suit_id,
                cost_center_id,
                subName,
                amount
            ]);
            
    
        
            //Make Empty
            $('#job_title').val(''),
            $('#job_title option:selected').val(''),
            $('#suit_no option:selected').val(''),
            $('#costCenter_id option:selected').val(''),
            $('#amount').val('')
            
            
            

        });

        
        
        
        
        
        
        //This function is used for sending data(JSON Data) to SalesController
        $('#cmdSubmit').click(function(){
            // Step 1: Read View Data and Create JSON Object
           
            // Creating SalesSub Json Object
            var paymentsub = {
                "payment_type":"", 
                "nature_job_id":"",
                "job_id":"",
                "suit_id":"",
                "cost_center_id":"",
                "amount":""
            };
        
        
            // Creating SalesMain Json Object
            var paymentmain = { 
                "tracking_no":"",
                "tracking_date":"",
                "location_from":"",
                "officers_name":"",
                "location":"",
                "job_details":"",
                "vendor_indicator":"",
                "pay_div_acc":"",
                "vendor_type_id":"",
                "vendor_firmid":"",
                "lawyer_firmid":"",
                "vendor_location":"",
                "location_from_vendor":"",
                "designation":"",
                "officers_name":"",
                "bill_for_branch_location":"",
                "bill_for_branch_div_type":"",
                "bill_reference_no":"",
                "bill_amount":"",
                "payment_date":"",
                "approved_amount":"",
                "approved_date":"",
                "finance_tracking_no":"",
                "paid_amount":"",
                "payment_method":"",
                "details":"",
                "payment_document":"",
                "other_document":"",
                "remarks":"",
                "Paymentsub":[] 
            };
        
            // Set Payment Main Value
            paymentmain.tracking_no = $("#tracking_no").val();
            paymentmain.tracking_date = $("#tracking_date").val();
            paymentmain.location_from = $("#location_from").val();
            paymentmain.officers_name = $("#officers_name").val();
            paymentmain.job_details = $("#job_details").val();
            paymentmain.vendor_indicator = $("#vendor_indicator").val();
            paymentmain.pay_div_acc = $("#pay_div_acc").val();
            paymentmain.vendor_type_id = $("#vendor_type_id").val();
            paymentmain.vendor_firmid = $("#vendor_firmid").val();
            paymentmain.lawyer_firmid = $("#lawyer_firmid").val();
            paymentmain.vendor_location = $("#vendor_location").val();
            paymentmain.location_from_vendor = $("#location_from_vendor").val();
            paymentmain.designation = $("#designation").val();
            paymentmain.officers_name = $("#officers_name").val();
            paymentmain.bill_for_branch_location = $("#bill_for_branch_location").val();
            paymentmain.bill_for_branch_div_type = $("#bill_for_branch_div_type").val();
            paymentmain.bill_reference_no = $("#bill_reference_no").val();
            paymentmain.bill_amount = $("#bill_amount").val();
            paymentmain.payment_date = $("#payment_date").val();
            paymentmain.approved_amount = $("#approved_amount").val();
            paymentmain.approved_date = $("#approved_date").val();
            paymentmain.finance_tracking_no = $("#finance_tracking_no").val();
            paymentmain.paid_amount = $("#paid_amount").val();
            paymentmain.payment_method = $("#payment_method").val();
            paymentmain.details = $("#details").val();
            paymentmain.payment_document = $("#payment_document").val();
            paymentmain.other_document = $("#other_document").val();
            paymentmain.remarks = $("#remarks").val();
            
            

        
            // Getting Table Data from where we will fetch Sales Sub Record
            var oTable = $('#pay_sub').dataTable().fnGetData();
        
        



            for (var i = 0; i < oTable.length; i++) 
            {
                // Set SalesSub individual Value
                paymentsub.payment_type = oTable[i][0];
                paymentsub.nature_job_id = oTable[i][1];
                paymentsub.job_id = oTable[i][2];
                paymentsub.suit_id = oTable[i][4];
                paymentsub.cost_center_id = oTable[i][5];
                paymentsub.amount = oTable[i][7];
                // adding to paymentmain.Paymentsub List Item
                paymentmain.Paymentsub.push(paymentsub);
                paymentsub = { "payment_type":"", "nature_job_id":"", "job_id":"", "suit_id":"", "cost_center_id":"", "amount":"" };


            }
        
            var jsonstr=JSON.stringify(paymentmain);
        
            //alert (jsonstr);
            //alert(jsonstr);
            // Step 1: Ends Here
        
            // Set 2: Ajax Post
            // Here i have used ajax post for saving/updating information
            //alert(jsonstr);
            $.ajax({
                url: "ajax_payment_save.php",
                data: "data="+jsonstr,
                type: "GET",
                contentType: "application/json",
                dataType: "text",
                success: function (data) {
                    $("#event_list").html(data);
                    //$('input:text, textarea').val('');
                    
                }
            });
        });
     
    });
</script>
<h2>Payment</h2>

<fieldset>
    <legend>Payment</legend>
    <table>
        <tr>
            <td>Account</td>
            <td>
                <select>
                    <option></option>
                    <?php
                    foreach ($ledger_list as $key => $value) {
                        echo "<option>$value[Name]</option>";
                    }
                    ?>
                </select>
            </td>
            <td>Date:</td>
            <td><input type="text" name="date" class="date" value="<?php echo date('Y-m-d'); ?>"/></td>
        </tr>
        <tr>
            <td>Ledger:</td>
            <td>
                <select>
                    <option></option>
                    <?php
                    foreach ($ledger_list as $key => $value) {
                        echo "<option>$value[Name]</option>";
                    }
                    ?>
                </select>
            </td>
            <td>Amount:</td>
            <td><input type="text"/></td>
            <td><input type="button" value ="Add" id="add"/></td>
        </tr>
    </table>
</fieldset>
<br/>

<table id="pay_sub" class="display">
    <thead>
    <th>Particular</th>
    <th>ledger_id</th>
    <th>Amount</th>
    </thead>
    <tbody>
        <tr>
            <td>s</td>
            <td>d</td>
            <td>f</td>
        </tr>
    </tbody>
</table>


<?php include("../Index/footer.php"); ?>
