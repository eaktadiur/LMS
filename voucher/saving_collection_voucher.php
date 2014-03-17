<?php
include '../lib/DbManager.php';


$collectionDay = getParam('collectionDay');


if (isSave()) {
    saveSavingCollectionVoucher($employeeId, $companyId);
    echo "<script type='text/javascript'>location.replace('saving_collection_voucher.php');</script>";
}

$voucherId = getParam('voucherId');
$MainVoucherId = getParam('mainVoucherId');

$maxId = maxTransactionId();
$date = date('Y-m-d');

$partyLedger = getPartyLedger($companyId);
$customerList = getSavingCustomerByemployee($companyId, $employeeId, $collectionDay);
$voucherTypeList = getVoucherType($companyId, 3);
//$groupList = getGroup($companyId);
//comboBox('group', $groupList, '', TRUE, 'product');

include("../body/header.php");
?>
<!--<script type="text/javascript" src="../public/js/bootstrap-select.js"></script>-->
<!--<link rel="stylesheet" type="text/css" href="../public/css/bootstrap-select.css">-->

<style type="text/css">
    input, select { border-radius: 0px 0px; border: 1px solid;}
    select, textarea, input[type="text"], input[type="password"], input[type="datetime"], input[type="datetime-local"], input[type="date"], input[type="month"], input[type="time"], input[type="week"], input[type="number"], input[type="email"], input[type="url"], input[type="search"], input[type="tel"], input[type="color"], .uneditable-input {
        line-height: 18px; 
        margin-bottom: 0px;
        padding: 4px;
    }
    .table td {
        padding: 2px 10px;
    }
</style>

<script type="text/javascript">
    $(document).ready(function() {

        //$('.selectpicker').selectpicker({});
        $('#collectionDayID').change(function() {
            var collectionDay = $('#collectionDayID').val();
            location.href = '?collectionDay=' + collectionDay;
        });
    });

function creditSum() {
    var sum = 0;
    //iterate through each textboxes and add the values
    $(".Credit").each(function() {

        //add only if the value is number
        if (!isNaN(this.value) && this.value.length != 0) {
            sum += parseFloat(this.value);
        }

    });
    //.toFixed() method will roundoff the final sum to 2 decimal places
    $("#CreditGrantTotal").html(sum.toFixed(2));
}
</script>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Saving Voucher: <?php echo $maxId; ?></a>
            </h3>
        </div>
        <div class="box-content">

            <form action="" method="POST" name='requisition' autocomplete="off">

                <input type="hidden" name="requisitionId" id="requisitionId" value="<?php echo $maxId ?>" />
                <input type="hidden" name="mode" value="new" />
                <input type="hidden" name="search_id" value="<?php echo $search_id ?>" />
                <input type="hidden" name="voucherType" id="voucherType" value="<?php echo $voucherId; ?>"/>

                <table class="table">
                    <tr>
                        <td width="120">Collection : </td>
                        <td><?php comboBox('collectionDay', $weeklist, "$collectionDay", TRUE); ?></td>
                    </tr>
                    <tr>
                        <td>Ref: </td>
                        <td><input type="text" name="ref" class="" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date: </td>
                        <td><input type="text" name="date" required class="datepicker" value="<?php echo $date; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Party Ledger: </td>
                        <td><?php comboBox('partyLedger', $partyLedger, "", TRUE, 'autoComplate', "required"); ?><span class="red"> *</span></td>
                    </tr>
                    <tr>
                        <td>Voucher Type: </td>
                        <td><?php comboBox('voucherType', $voucherTypeList, "", FALSE, 'required'); ?></td>
                    </tr>
                </table>
                <hr/>
                <div class="center"><h2>Saving Collection Voucher</h2></div>


                <!--<button type="button" class="btn btn-primary" id="Add" title="productTab" onclick="addCombo();">Add More</button>-->
                <table class="table table-striped table-bordered bootstrap-datatable control-group">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Particular</th>
                    <th width="100">Credit</th>
                    <th width="30">Chk</th>
                    </thead>
                    <tbody>
                        <?php
                        while ($row = $customerList->fetch_object()) {
                            $grandTotal+=$row->PrincipalAmount + $row->InterestAmount;
                            $total = $row->PrincipalAmount + $row->InterestAmount;
                            ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?> <input type="hidden" name="ledgerId[<?php echo $sl; ?>]" value="<?php echo $row->LedgerId; ?>"/></td>
                                <td><input onchange="creditSum();" style="width:90%" name="credit[<?php echo $sl; ?>]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" value="<?php echo $row->CollectionAmount; ?>" class="Credit"  /></td>
                                <td align="center"><input type="checkbox" name="chk[<?php echo $sl; ?>]" checked="true"/></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                    <tfoot>
                    <th></th>
                    <th align="right">Grand Total</th>
                    <th align="right"><div id="ProductGrantTotal"><?php echo formatMoney($grandTotal); ?></div></th>
                    <th></th>
                    </tfoot>
                </table>
                Note: <textarea type="text" name="note" class="form-input" id="note" ></textarea><br/>

                <div class="form-actions">
                    <button type="submit" value="save" name="save" class="btn btn-primary">
                        <i class="icon icon-save"></i> 
                        Submit
                    </button>
                </div>  


            </form>
            <br/>

        </div><!--/span-->
    </div>	
</div>


<?php include '../body/footer.php'; ?>
