
<?php
include '../lib/DbManager.php';
include '../body/header.php';
?>
<script type="text/javascript">

    $(document).ready(function() {
        addTableTr();
        $('.zipsearch').autocomplete({
            source: 'remote.php',
            minLength: 1,
            select: function(evt, ui)
            {
                // when a zipcode is selected, populate related fields in this form
                this.form.city.value = ui.item.Under;
                this.form.state.value = ui.item.Nature;
            }
        });
    });


    //Auto Complate
    function addTableTr() {

        var $table = $("#productGrid");
        var $tableBody = $("tbody", $table);
        var countTr = $('#productGrid tbody tr').length;
        var sl = countTr + 1;

        var newtr = $('<tr>\n\
        <td>' + sl + '</td>\n\
            <td><input type="text" name="productName[]" style="width:100%" class="product required" /></td>\n\
            <td><input style="width:100%" name="qty[]" type="text" class="quantity digit" min="1" value="1" onchange="calCulate();"/><div class="unit">unit</div></td>\n\
            <td><input style="width:100%" name="price[]" type="text" class="price number" id="price_product" value="" onchange="calCulate();"/></td>\n\
            <td id="TotalPrice" align="right">00.00 </td>\n\
            <td><input style="width:100%" name="remark[]" type="text" /></td>\n\
            <td><div class="remove" onClick="$(this).parent().parent().remove();"><img src="../../public/images/delete.png"/></div></td>\n\
        </tr>');

        $('.product', newtr).autocomplete({
            source: 'remote.php',
            minLength: 2,
            select: function(evt, ui)
            {
               var itemrow = $(this).closest('tr');
               itemrow.find('.unit').text(ui.item.Under);
                // when a zipcode is selected, populate related fields in this form
                //this.form.table.qty.value = ui.item.Under;
                //this.form.state.value = ui.item.Nature;
            }
        });
        $tableBody.append(newtr);
    }



</script>

<script type="text/javascript" src="../../jquery-ui/js/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="../../jquery-ui/css/ui-lightness/jquery-ui-1.8.16.custom.css"/>

<form onsubmit="return false;">

    <fieldset class="fieldset" style="width: 780px;"> 
        <legend>Add Product</legend>
        <table id="productGrid" class="ui-state-default">
            <thead>
            <th>SL</th>
            <th>Product</th>
            <th width="150">Qty</th>
            <th width="80">Action</th>
            </thead>
            <tbody></tbody>
        </table>
        <button type="button" class="button" id="Add" title="productTab" onclick="addTableTr();">Add More</button>
        <a href="../product/product_get_list" class="button float-right" target="_blank">Show Product List</a>
    </fieldset>

    Enter a Zipcode:
    <input id="zipsearch" class="zipsearch ui-autocomplete-input" type="text" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true">
    City:
    <input id="city" type="text" disabled="">
    State:
    <input id="state" type="text" disabled="">
</form>