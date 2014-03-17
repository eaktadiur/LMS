

$(document).ready(function() {

    addCombo();
    $('.quantity').live('keyup', function(e) {
        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');

        if (typeof(spanID) === "undefined" && product !== '') {
            addCombo();
        }

    });


    $('.quantity').live('focusout', function(e) {

        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');



        if (typeof(spanID) === "undefined" && product === '') {
            $(this).parent().parent().remove();
            $('#note').focus();
            //console.log('Tr: ' + product + ' SP:' + spanID);
        }

    });

    $('#partyLedgerID').selectToAutocomplete();
    $('#salesLedgerID').selectToAutocomplete();
    $('#voucherTypeID').selectToAutocomplete();


});
function attach() {
    $('#dlg').removeClass('display_none');
    $('#dlg').dialog('open').dialog('setTitle', 'Attach File');
    $('#fm').form('clear');
    //url = 'product_save.php?mode=new';
}

function CuteWebUI_AjaxUploader_OnTaskComplete(task) {

    var AttachmentDetails = $('#AttachmentDetails').val();
    var k = 1;
    $("<tr>" +
            "<td align='center'>" + k + ".</td>" +
            "<td align='left'>" + AttachmentDetails + "<input type='hidden' value='" + AttachmentDetails + "' name='AttachmentDetails[]'/></td>" +
            "<input type='hidden' value='" + task.FileName + "' name='FileName[]'/>" +
            "<td align='center'><a href='../documents/PR/" + task.FileName + "' class='fancybox'>View </a><div class='remove float-right' onClick='$(this).parent().parent().remove();'><img src='../public/images/delete.png'/></div></td>" +
            "</tr>").appendTo("#attachment_tab");
    k++;
    $('#AjaxUploaderFilesButton').hide();
    $('#AttachmentDetails').val('');
}


function addCombo() {

    var $table = $("#productGrid");
    var $tableBody = $("tbody", $table);
    var countTr = $('#productGrid tbody tr').length;
    var sl = countTr + 1;
    var newtr = $('<tr>\n\
        <td>' + sl + '</td>\n\
            <td><select name="productId[]" class="product required" autofocus="autofocus" autocorrect="off" autocomplete="off">' + $('#productID').html() + '</select></td>\n\
            <td><input style="width:100%" name="qty[]" type="text" class="quantity digit" min="1" value="1" onchange="calCulate();"/></td>\n\
            <td><input style="width:100%" name="rate[]" type="text" class="price number" id="price_product" value="" onchange="calCulate();"/></td>\n\
            <td><input style="width:100%" name="total[]" type="text" /></td>\n\
            <td align="center"><div class="remove" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>\n\
        </tr>');
    $('.product', newtr).selectToAutocomplete();
    $tableBody.append(newtr);
}
