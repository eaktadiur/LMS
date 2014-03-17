<?php
include '../Index/header.php';
//include('payment.inc.php');
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
                    "aTargets": [0,1,2,4,5] 
                }
            ]
                    
        });
                
                
        $('#add').click(function(){
            
            var cost_center_id='';
            var suit_id='';
            
            var payment_type=$('input:checked').val();
            var pa_id=$('#pa_id').val();
            
            if(payment_type==1){
                suit_id=$('#suit_no').val();
                if(suit_id==null || suit_id==''){
                    alert('Select Suit No');
                    return false;
                }
                var subName=$('#suit_no option:selected').html();
            }
            else if(payment_type==2){
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
           
            // Creating PaymentSub Json Object
            var paymentsub = {
                "payment_type":"", 
                "nature_job_id":"",
                "job_id":"",
                "suit_id":"",
                "cost_center_id":"",
                "amount":""
            };
        
        
            // Creating PaymentMain Json Object
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


<h2><a href="payments.php">Payment</a></h2>
<hr/>
<form id="party_payment" name="form1" method="POST" action="" enctype="multipart/form-data">
    <input type="hidden" name="payment_id" id="pa_id" value="<?php echo $pa_id; ?>" />

    <fieldset>
        <legend style="color: #ff0000; font-family: verdana; font-size: 14pt;">Client Information:</legend>

        <table width="100%" id="hor-minimalist-b" border="0">
            <tr>
                <td width="135"><b>Tracking No. </td>
                <td><input name="tracking_no" id="tracking_no" type="text" /></td>
                <td width="135"><b>Tracking Date. </td>
                <td><input name="tracking_date" id="tracking_date" type="text" class="date" /></td>
            </tr>

            <tr>

                <td ><b>Location</td>
                <td>
                    <select name="location" id="location" onchange="ajaxLoader('ajax_location.php?val='+this.value+'&amp;a=100', 'ajax_location', '<img src=../images/ajaxLoader.gif />');">
                        <option value = '' ></option>
                        <?php
                        $q = mysql_query("select office_type_id, `name` from office_type ORDER BY `name`");
                        while ($d = mysql_fetch_object($q)) {
                            echo "<option value = '$d->office_type_id' >$d->name</option>";
                        }
                        ?>   

                    </select>

                </td>
                <td id="ajax_location" colspan="2"> </td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td><strong>Job Details: </strong></td>
                <td colspan="3"><textarea name="job_details" id="job_details" cols="55" rows="3"></textarea></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </fieldset>
    <br />    <br />



    <fieldset>
        <legend  style="color: #ff0000; font-family: verdana; font-size: 14pt;">Vendor's Information:</legend> 

        <table width="100%" id="hor-minimalist-b" border="0">
            <tr>
                <td><b>Vendor Indicator:</td>
                <td> <select name="vendor_indicator" id="vendor_indicator" onchange="ajaxLoader('ajax_payment_for_vendor_info.php?val='+this.value+'&amp;a=0', 'ajax_payment_for_vendor_info', '<img src=../images/ajaxLoader.gif />');" >
                        <option></option>
                        <option value="1">Divisional's Expense</option>
                        <option value="2">Vendor Expense</option>
                        <option value="3">Staff Expense</option>
                    </select></td>
                <td></td>
            </tr>

            <tr id="ajax_payment_for_vendor_info">

            </tr>
        </table>

    </fieldset> 




    <br />    <br />
    <fieldset>
        <legend style="color: #ff0000; font-family: verdana; font-size: 14pt;">Bill's Information:</legend> 

        <table width="100%" id="hor-minimalist-b" border="0">
            <tr>
                <td width="135"><b>Branch/Div/Center.:</td> 

                <td><select name="bill_for_branch_div_type" id="bill_for_branch_div_type" onchange="ajaxLoader('ajax_bill_for_branch_location.php?val='+this.value+'&amp;a=100', 'bill_for_branch_location', '<img src=../images/ajaxLoader.gif />');">
                        <option value = '' ></option>
                        <?php
                        $q = mysql_query("select office_type_id, name from office_type");
                        while ($d = mysql_fetch_object($q)) {
                            echo "<option value = '$d->office_type_id' >$d->name</option>";
                        }
                        ?>   






                    </select>

                </td>
                <td id="bill_for_branch_location" colspan="2">

            </tr>
            <tr>
                <td width="135"><b>Bill Reference No.:</td> 
                <td><input name="bill_reference_no" id="bill_reference_no" type="text" /></td> 
                <td width="135"><b>Bill Amount:</td> 
                <td><input name="bill_amount" id="bill_amount" type="text" /></td> 
                <td width="135"><b>Bill Date:</td>
                <td><input name="payment_date" id="payment_date" type="text" class="date" /></td>
            </tr>


        </table>
    </fieldset> 



    <br /><br />
    <fieldset>
        <legend style="color: #ff0000; font-family: verdana; font-size: 14pt;">Payment Information:</legend>





        <table width="100%" id="hor-minimalist-b" border="0">

            <tr>

                <td><b>Approved Amount </td>
                <td><input name="approved_amount" id="approved_amount" type="text" /> </td>

                <td ><b>Bill Approval Date: </td>
                <td><input name="approved_date" id="approved_date" type="text" class="date" /></td>

            </tr>
            <tr>  
                <td><b>FIN PR No. </td>
                <td><input name="finance_tracking_no" id="finance_tracking_no" type="text" id="finance_tracking_no" /></td>
                <td><b>Paid Amount</td>
                <td> <input name="paid_amount" id="paid_amount" type="text" /></td>
            </tr>

            <tr>
                <td><b>Payment Type: </td>
                <td>
                    <select name="payment_method"  id="payment_method">
                        <option></option>
                        <?php
                        while ($d = mysql_fetch_object($payment_method)) {
                            echo "<option value = '$d->id' >$d->method</option>";
                        }
                        ?>
                    </select>
                </td>
                <td><b/>Payment Material</td>
                <td><input name="details" id="details" type="text" />      </td>
            </tr>    




            <tr>
                <td><b>Payment Document</td>
                <td><input type=file class="checkfiletypes" name="payment_document" id="payment_document"></td>
                <td><b/>Other Documents:</td>
                <td><input type=file class="checkfiletypes" name="other_document" id="other_document"></td>
            </tr>
            <tr>
                <td><b>Remarks: </td>
                <td><textarea name="remarks" id="remarks" cols="55" rows="3"></textarea></td>
                <td></td>
                <td></td>
            </tr>

        </table>





        <hr/> 
        <table width="100%" id="hor-minimalist-b" border="0"> 

            <tr>
                <td width="137"><b>Payment for Suit</td>
                <td>
                    <input name="suit_type" id="suit_type" type="radio" value="1"  onclick="ajaxLoader('ajax_ulis.php?val='+this.value+'&amp;a=0', 'ajax_ulis', '<img src=../images/ajaxLoader.gif />');">Yes</td>
                <td>
                    <input name="suit_type" id="suit_types" type="radio" value="2"  onclick="ajaxLoader('ajax_ulis.php?val='+this.value+'&amp;a=0', 'ajax_ulis', '<img src=../images/ajaxLoader.gif />');">No
                </td>

            </tr>



            <table id="ulis_mulipte_add_table">
                <tr>
                    <td id="ajax_ulis" colspan="4"></td>
                </tr>
                <tr>
                    <td id="job_nature"><div align="left"><strong>Nature of Job</strong></div></td>
                    <td width="135">
                        <select name="nature_of_job" id="nature_of_job" onchange="ajaxLoader('ajax_payment.php?val='+this.value+'&amp;a=<?php echo $i; ?>&amp;chk=1', 'ajax_payment_job<?php echo $i; ?>', '<img src=../images/ajaxLoader.gif />');" >
                            <option></option>
                            <?php
                            $q = mysql_query("SELECT nature_job_id, nature_job_name FROM nature_job ORDER BY nature_job_id");
                            while ($d = mysql_fetch_object($q)) {
                                echo "<option value = '$d->nature_job_id' >$d->nature_job_name</option>";
                            }
                            ?>
                        </select>	 
                    </td>

                    <td><b/>Job Title:</td>
                    <td id="ajax_payment_job"></td>
                    <td ><b/>Amount:</td>
                    <td><input type='text' name='amount' value='' id="amount"/></td>
                </tr>
                <tr>
                    <td><input type="button" value ="Add" id="add"/></td>
                    <td><input type="button" value ="Delete" id="DeleteRow"/></td>
                </tr>

            </table>

            <table id="pay_sub" class="display" >
                <thead>
                <th>Payment Type</th>
                <th>Nature of Job ID</th>
                <th width="100">Job Title ID</th>
                <th>Job Title</th>
                <th>Suit ID</th>
                <th>Cost Center ID</th>
                <th>Client/Suit Name</th>
                <th width="100">Amount</th>
                </thead>
            </table> 
            <input type="button" name="cmdSubmit" id="cmdSubmit" value="Save Payment"/>
    </fieldset> 
</form>



<?php include("../Index/footer.php"); ?>
