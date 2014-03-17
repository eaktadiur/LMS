<?php
include '../lib/DbManager.php';
include '../body/header.php';
?>
<script type="text/javascript">
    $(document).ready(function() {
        $(function() {
            var total = 0,
            $tableTotal = $('.result');

            $('tr[data-total]').each(function() {
                var $row = $(this);
                total += $row.data('total');
                $row.find('input').each(function() {
                    var $input = $(this);
                    $input.data('value', parseVals($input.val()))
                    $input.keyup(function() {
                        var currRowTot = $row.data('total');
                        var currInputVal = parseVals($input.val());
                        var diff = currInputVal - $input.data('value');
                        $input.data('value', currInputVal)

                        var newRowTot = currRowTot + diff;
                        $row.data('total', newRowTot).find('.total').text(newRowTot)
                        $tableTotal.trigger('changeTotal', [diff])
                    });
                });

            })

            $tableTotal.data('total', total).val(total).on('changeTotal', function(e, rowDiff) {
                var currTotal = $(this).data('total') + rowDiff;
                $(this).data('total', currTotal).val(currTotal);

            })


        });



        function parseVals(val) {
            return (val != '') ? parseInt(val) : 0;
        }
    });
        
</script>


<table>
    <th>First</th>
    <th>Second</th>
    <th>Third</th>
    <th>SUM</th>
    <tr data-total>
        <td><input type="text"  value = ""/></td>
        <td><input type="text"  value = ""/></td>
        <td><input type="text"  value = ""/></td>
        <td class="total"></td>
    </tr>
    <tr data-total>
        <td><input type="text"  value = ""/></td>
        <td><input type="text"  value = ""/></td>
        <td><input type="text"  value = ""/></td>
        <td class="total"></td>
    </tr>
    <tr>
        <td>Sum of Column(SUM)</td>
        <td><input type="text" name="result" class="result" value=""></td>
    </tr>
</table>

<script type="text/javascript">
    $(document).ready(function() {
        $('#sum_table tr:not(.totalColumn) input:text').bind('keyup change', function() {
            var $table = $(this).closest('table');
            var total = 0;
            var thisNumber = $(this).attr('class').match(/(\d+)/)[1];

            $table.find('tr:not(.totalColumn) .sum'+thisNumber).each(function() {
                total += +$(this).val();
            });

            $table.find('.totalColumn td:nth-child('+thisNumber+') input').val(total);
        });
    });
        
</script>

<style>
    .sum1 {
        background: yellow
    }
    .sum2 {
        background: orange
    }
    .sum3 {
        background: cyan
    }
</style>

<table id="sum_table" width="600" border="0">
    <tr>
        <td>Sum 1</td>
        <td>Sum 2</td>
        <td>Sum 3</td>
    </tr>
    <tr>
        <td><input type="text" name="textfield" id="textfield" class="sum1" /></td>
        <td><input type="text" name="textfield2" id="textfield2" class="sum2" /></td>
        <td><input type="text" name="textfield3" id="textfield3" class="sum3"/></td>
    </tr>
    <tr>
        <td><input type="text" name="textfield4" id="textfield4" class="sum1" /></td>
        <td><input type="text" name="textfield5" id="textfield5" class="sum2" /></td>
        <td><input type="text" name="textfield6" id="textfield6" class="sum3" /></td>
    </tr>
    <tr>
        <td><input type="text" name="textfield7" id="textfield7" class="sum1" /></td>
        <td><input type="text" name="textfield8" id="textfield8" class="sum2"/></td>
        <td><input type="text" name="textfield9" id="textfield9" class="sum3"/></td>
    </tr>
    <tr>
        <td>Total</td>
        <td>Total</td>
        <td>Total</td>
    </tr>
    <tr class="totalColumn">
        <td><input type="text" name="textfield10" id="textfield10" /></td>
        <td><input type="text" name="textfield11" id="textfield11" /></td>
        <td><input type="text" name="textfield12" id="textfield12" /></td>
    </tr>
    <tr>
        <td>bla</td>
        <td>bla</td>
        <td>bla</td>
    </tr>
</table>




<script type="text/javascript">
    $(document).ready(function() {

        $("#budgetWorksheet tbody tr").each(function() {
            $(this).change(function() {
                rowAverage();
            });
        });
    });

    function rowAverage() {
        var grand_total=0;
        $("tbody tr").each(function(){
            var row_total = 0;
            $("td:not(.subtotal) input:text", this).each(function() {
                row_total += Number($(this).val());
            });

            if (row_total > 0) {
                $(".subtotal :input:text", this).val(row_total);
                grand_total+=row_total;
            }
        });
    }
    
        
</script>


<h1>1st</h1>
<table>
    <thead>
        <tr>
            <th>Quantity</th>
            <th>Price</th>
            <th>Sum</th>
        </tr></thead>
    <tbody>
        <tr class="sum">
            <td>2</td>
            <td>2.45</td>
            <td></td>
        </tr>
        <tr class="sum">
            <td>3</td>
            <td>24.5</td>
            <td></td>
        </tr>
        <tr class="sum">
            <td>4</td>
            <td>37</td>
            <td></td>
        </tr>
        <tr>
            <td colspan="2">Total</td>
            <td id="total"></td>
        </tr>
    </tbody>
</table>


<br/>
<h1>2nd</h1>
<form action="" method="POST">
    <table id="budgetWorksheet" class="ui-state-default">
        <thead>
        <th>Budget Item</th>
        <th>Month 1</th>
        <th>Month 2</th>
        <th>Month 3</th>
        <th>Monthly Average</th>
        </thead>
        <tbody>
            <tr class="row">
                <td>Rent</td>
                <td><input type="text" class="txt"/></td>
                <td><input type="text" /></td>
                <td><input type="text" /></td>
                <td class="subtotal"><input type="text" class="total" readonly="" value="" name="subtotal[]"/></td>
            </tr>
            <tr class="row">
                <td>Rent</td>
                <td><input type="text" class="txt"/></td>
                <td><input type="text" /></td>
                <td><input type="text" /></td>
                <td class="subtotal"><input type="text" class="total" readonly="readonly" value="" name="subtotal[]"/></td>
            </tr>
            <tr class="row">
                <td>Food</td>
                <td><input type="text" class="txt"/></td>
                <td><input type="text" /></td>
                <td><input type="text" /></td>
                <td class="subtotal"><input type="text" class="total"  readonly="readonly" value=""  name="subtotal[]" /></td>
            </tr>
            
        </tbody>
    </table>
    <button type="submit" class="button">Save</button>
</form>




<script>
    function getTotal(){
        var total = 0;
        $('.price').each(function(){
            total += parseFloat(this.innerHTML)
        });
        $('#total').text(total);
    }

    getTotal();
</script>


<h1>3rd </h1>
<table>
    <thead>
        <tr>
            <th>QTY</th>
            <th>PRICE</th>
            <th>SUM</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>2</td>
            <td>1.25</td>
            <td class='price'>2.50</td>
        </tr>
        <tr>
            <td>3</td>
            <td>2.10</td>
            <td class='price'>6.30</td>
        </tr>
        <tr>
            <td>5</td>
            <td>10.50</td>
            <td class='price'>52.50</td>
        </tr>
        <tr>
            <td colspan='2'>Total</td>
            <td id='total'></td>
        </tr>
    </tbody>
</table>




<script>
    
    $(document).ready(function(){
        
        $('.qty').keyup(function(){
            
            getTotal();
        })

        
        
        
        function getTotal(){
            var total = 0;
            $('.sums').each(function(){
                total += parseFloat(this.innerHTML)
            });
            $('#total4').text(total);
        }
        
    });
    

    

  
</script>


<h1>4th</h1>
<table>
    <thead>
        <tr>
            <th>QTY</th>
            <th>PRICE</th>
            <th>SUM</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><input type="text" class='qty' size='1'/></td>
            <td class='price'>5</td>
            <td><input type="text" class='sums' size='1'/></td>
        </tr>
        <tr>
            <td><input type="text" class='qty' size='1'/></td>
            <td class='price'>10</td>
            <td><input type="text" class='sums' size='1'/></td>
        </tr>
        <tr>
            <td><input type="text" class='qty' size='1'/></td>
            <td class='price'>15</td>
            <td><input type="text" class='sums' size='1'/></td>
        </tr>
        <tr>
            <td colspan='2'>Total</td>
            <td id='total4'></td>
        </tr>
    </tbody>
</table>
<?php include '../body/footer.php'; ?>