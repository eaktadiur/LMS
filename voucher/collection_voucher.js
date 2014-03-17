

$(document).ready(function() {
    //addCombo();
    $('.loan').live('keyup', function(e) {
        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');

        if (typeof(spanID) === "undefined" && product !== '') {
            //addCombo();
        }

    });


    $('.loan').live('focusout', function(e) {

        var product = $(this).closest('tr').find('td input:eq(0)', this).val();
        var spanID = $(this).closest('tr').next().find('td input.ui-autocomplete-input').attr('class');

        if (typeof(spanID) === "undefined" && product === '') {
            //$(this).parent().parent().remove();
            $('#note').focus();
            //console.log('Tr: ' + product + ' SP:' + spanID);
        }

    });

//$('#partyLedgerID').focus()();


});


//Combo Grid
function addCombo() {

    var $table = $("#productGrid");
    var $tableBody = $("tbody", $table);
    var countTr = $('#productGrid tbody tr').length;
    var sl = countTr + 1;
    var newtr = $('<tr>\n\
        <td>' + sl + '</td>\n\
            <td><select name="ledgerId[]" class="product required" autocorrect="off" autocomplete="off">' + $('#groupID').html() + '</select></td>\n\
            <td><input style="width:100%" name="loan[]" type="text" class="loan digit" onchange="RecalcProduct();" /></td>\n\
            <td><input style="width:100%" name="interest[]" type="text" class="interest digit" onchange="RecalcProduct();"/></td>\n\
            <td><input style="width:100%" name="saving[]" type="text" class="saving digit" onchange="RecalcProduct();" id="saving" /></td>\n\
            <td><input style="width:100%" name="amount[]" type="text" class="amount digit" onchange="RecalcProduct();" id="TotalPrice" readonly="true" /></td>\n\
            <td><div class="remove" align="center" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div></td>\n\
        </tr>');
    $tableBody.append(newtr);

    $('select', newtr).selectToAutocomplete();

    $('#partyLedgerID').selectToAutocomplete();
    $('#voucherTypeID').selectToAutocomplete();

}

function RecalcProduct() {
    $("[id^=TotalPrice]").calc(
            // the equation to use for the calculation
            "loan + interest + saving",
            // define the variables used in the equation, these can be a jQuery object
                    {
                        loan: $("input[name^=loan]"),
                        interest: $("input[name^=interest]"),
                        saving: $("[id^=saving]")
                    },
            // define the formatting callback, the results of the calculation are passed to this function
            function(s) {
                // return the number as a dollar amount
                return s.toFixed(2);
            },
                    // define the finish callback, this runs after the calculation has been complete
                            function($this) {
                                // sum the total of the $("[id^=total_item]") selector
                                var sum = $this.sum();

                                $("#ProductGrantTotal").text(
                                        // round the results to 2 digits
                                        sum.toFixed(2)
                                        );
                            });
                }

