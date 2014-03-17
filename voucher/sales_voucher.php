<?php
include '../lib/DbManager.php';


$collectionDay = getParam('collectionDay');


if (isSave()) {
    saveCollectionVoucher($employeeId, $companyId);
    echo "<script type='text/javascript'>location.replace('collection_voucher.php');</script>";
}

$voucherId = getParam('voucherId');
$maxId = maxTransactionId();

$date = date('Y-m-d');

$partyLedger = getPartyLedger($companyId);
$customerList = getCustomerByemployee($companyId, $employeeId, $collectionDay);
$voucherTypeList = getVoucherType($companyId, 10);
//$groupList = getGroup($companyId);
//comboBox('group', $groupList, '', TRUE, 'product');
$productList = getProductList($companyId, $search, 0, 1000);
include("../body/header.php");
?>
<!--<script src="accounting_voucher.js" type="text/javascript" ></script>-->

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
    //Combo Grid
    function addCombo() {

        var $table = $("#productGrid");
        var $tableBody = $("tbody", $table);
        var countTr = $('#productGrid tbody tr').length;
        var sl = countTr + 1;
        var newtr = $('<tr>\n\
        <td>' + sl + '</td>\n\
            <td><select name="productId[]" class="product form-input" >' + $('#productId').html() + '</select></td>\n\
            <td><input onkeyup="sumRow($(this));" style="width:90%" name="principal[]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" class="qty"  /></td>\n\
            <td><input onkeyup="sumRow($(this));" style="width:90%" name="interest[]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" class="price" /></td>\n\
            <td><input style="width:90%" name="amount[]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" class="amount" readonly="true" /></td>\n\
            <td><div class="remove" align="center" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>\n\
        </tr>');
        $tableBody.append(newtr);

        $('select', newtr).selectToAutocomplete();

    }

    function sumColumn() {
        var sum = 0;
        $('table tbody tr .amount').each(function() {
            sum += parseFloat($(this).val()) || 0;
        });

        $('#ProductGrantTotal').text(sum);
    }
    function sumRow(obj) {
        var item = obj.closest("tr");

        var loan = item.find('.qty').val(),
                interest = item.find('.price').val();
        var total = parseFloat($.isNumeric(loan) ? loan : 0) + parseFloat($.isNumeric(interest) ? interest : 0);
        item.find('.amount').val(parseFloat(total).toFixed(2));
        sumColumn();
    }
</script>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Sales Voucher: <?php echo $maxId; ?></a>
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
                <div class="center"><h2>Sales Collection Voucher</h2></div>


                <!--<button type="button" class="btn btn-primary" id="Add" title="productTab" onclick="addCombo();">Add More</button>-->
                <table id="productGrid" class="table table-striped table-bordered bootstrap-datatable control-group">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Particular</th>
                    <th width="100">Qty</th>
                    <th width="100">Price</th>
                    <th width="100">Total</th>
                    <th width="30">Action</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>
                                <select name="product[]" id="productId" class="product form-input autoComplate">
                                    <option></option>
                                    <?php
                                    while ($row = $productList->fetch_object()) {
                                        echo "<option value='$row->ProductId' >$row->Name</option>";
                                    }
                                    ?>
                                </select>
                            </td>
                            <td><input onkeyup="sumRow($(this));" style="width:90%" name="principal[<?php echo $sl; ?>]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" value="<?php echo $row->PrincipalAmount; ?>" class="qty"  /></td>
                            <td><input onkeyup="sumRow($(this));" style="width:90%" name="interest[<?php echo $sl; ?>]" type="text" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" value="<?php echo $row->InterestAmount; ?>" class="price" /></td>
                            <td><input style="width:90%" name="amount[<?php echo $sl; ?>]" type="text" value="<?php echo $total; ?>" pattern= "[0-9]+([\.|,][0-9]+)?" title="Decimal number Only" class="amount" readonly="true" /></td>
                            <td><div class="remove" align="center" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>
                        </tr>

                    </tbody>
                    <tfoot>
                    <th></th>
                    <th colspan="3" align="right">Grand Total</th>
                    <th align="right"><div id="ProductGrantTotal"><?php echo formatMoney($grandTotal); ?></div></th>
                    <th></th>
                    </tfoot>
                </table>
                <div class="row-fluid">
                    <div class="span2"><button type="button" class="btn btn-primary form-input" id="Add" title="productTab" onclick="addCombo();"><i class="icon-white icon-plus-sign"></i> Add More</button></div>
                    <div class="span10"><input type="text" name="note" id="note" placeholder="Note" class="form-input"></div>
                </div>
                <hr/>
                <button type="submit" value="save" name="save" class="btn btn-primary">
                    <i class="icon icon-white icon-save"></i> Save
                </button>


            </form>
            <br/>

        </div><!--/span-->
    </div>	
</div>


<?php include '../body/footer.php'; ?>
