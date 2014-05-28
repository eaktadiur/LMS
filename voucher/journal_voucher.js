

$(document).ready(function() {
    //addCombo();
    $('.ledger').selectToAutocomplete();
    $('.Debit, .Credit').live('keyup', function(e) {
        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');

        if (typeof(spanID) === "undefined" && product !== '') {
            addCombo();
        }

    });


    $('.Debit, .Credit').live('focusout', function(e) {

        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');



        if (typeof(spanID) === "undefined" && product === '') {
            $(this).parent().parent().remove();
            $('#note').focus();
            //console.log('Tr: ' + product + ' SP:' + spanID);
        }

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
            <td><select name="ledgerId[]" class=" ledger product form-input">' + $('#ledgerId').html() + '</select></td>\n\
            <td><input style="width:90%" name="Debit[]" type="text" class="Debit" onchange="debitSum();" /></td>\n\
            <td><input style="width:90%" name="Credit[]" type="text" class="Credit" onchange="creditSum();"/></td>\n\
            <td><div class="remove" align="center" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>\n\
        </tr>');
    $tableBody.append(newtr);

    $('.ledger', newtr).selectToAutocomplete();

}



function debitSum() {
    var sum = 0;
    //iterate through each textboxes and add the values
    $(".Debit").each(function() {

        //add only if the value is number
        if (!isNaN(this.value) && this.value.length != 0) {
            sum += parseFloat(this.value);
        }

    });
    //.toFixed() method will roundoff the final sum to 2 decimal places
    $("#DebitGrantTotal").html(sum.toFixed(2));
}

function creditSum() {
    var sum = 0;
    //iterate through each textboxes and add the values
    $(".Credit").each(function() {

        //add only if the value is number
        if (!isNaN(this.value) && this.value.length !== 0) {
            sum += parseFloat(this.value);
        }

    });
    //.toFixed() method will roundoff the final sum to 2 decimal places
    $("#CreditGrantTotal").html(sum.toFixed(2));
}

