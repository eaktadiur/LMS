<?php
include '../lib/DbManager.php';


$voucherId = getParam('voucherId');
$MainVoucherId = getParam('mainVoucherId');

$maxId = maxTransactionId();
$date = date('Y-m-d');
$partyLedger = getPartyLedger($companyId);

$voucherTypeList = getVoucherType($companyId, 2);
$ledgerList = getLedgerVoucherList($companyId);

if (isSave()) {

    saveReceiveVoucher($employeeId, $companyId);
    echo "<script type='text/javascript'>location.replace('accounting_voucher.php');</script>";
}



include("../body/header.php");
?>
<script src="accounting_voucher.js" type="text/javascript" ></script>

<style type="text/css">
    input, select
    {
        border-radius: 0px 0px;
        border: 1px solid;
    }
    .table td {
        padding: 2px;
    }

    select {
        margin-bottom: 0px;
        padding: 0px;
    }
</style>



<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Receive Voucher : <?php echo $maxId; ?></a>
            </h3>
        </div>
        <div class="box-content">

            <form action="" class="" method="POST" autocomplete="off">
                <input type="hidden" name="mode" value="new" />
                <input type="hidden" name="search_id" value="<?php echo $search_id ?>" />
                <input type="hidden" name="voucherType" id="voucherType" value="<?php echo $voucherId; ?>"/>



                <table class="table">
                    <tr>
                        <td width="120">Ref: </td>
                        <td><input type="text" name="ref" class="" value="" /></td>
                    </tr>
                    <tr>
                        <td>Date: </td>
                        <td><input type="text" name="date" required class="datepicker" value="<?php echo $date; ?>" /></td>
                    </tr>
                    <tr>
                        <td>Party Ledger: </td>
                        <td><?php comboBox('partyLedger', $partyLedger, "", TRUE, '', "required"); ?></td>
                    </tr>
                    <tr>
                        <td>Voucher Type: </td>
                        <td><?php comboBox('voucherType', $voucherTypeList, "", FALSE, 'required'); ?></td>
                    </tr>
                </table>

                <div class="center"><h2>Receive Voucher</h2></div>

                <table id="productGrid" class="table table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th width="30">S/N</th>
                            <th>Particular</th>
                            <th width="100">Amount</th>
                            <th width="50">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>01</td>
                            <td> 
                                <select name="ledgerId[]" id="ledgerId" class="product form-input">
                                    <option></option>
                                    <?php
                                    while ($row = $ledgerList->fetch_object()) {
                                        echo "<option value='$row->LedgerId' >$row->Name</option>";
                                    }
                                    ?>
                                </select>
                            </td>
                            <td><input style="width:90%" name="amount[]" type="text" class="quantity digit" /></td>
                            <td><div class="remove" align="center" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>
                        </tr>
                    </tbody>
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


        </div>
    </div><!--/span-->
</div>	

<?php include '../body/footer.php'; ?>
