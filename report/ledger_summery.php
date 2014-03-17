<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$ledgerId = getParam('ledgerId');


$ledgerSummery = ledgerSummery($ledgerId);
?>
<script src="../public/Highcharts-3.0.9/js/highcharts.js"></script>
<script src="../public/Highcharts-3.0.9/js/modules/exporting.js"></script>


<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse List</a>
            </h3>
        </div>
        <div class="box-content">
            <table class="table">
                <tr>
                    <td><h2><?php echo getLedgerName($ledgerId); ?> Summery</h2></td>
                    <td width="250"></td>
                    <td align="right"><a href="javascript:history.back(1)" class="button">Back</a></td>
                </tr>
            </table>

            <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                <thead>
                    <tr>
                        <th width='30'>S/N</th>
                        <th width="500">Ledger Name</th>
                        <th width="150" >Debit</th>
                        <th width="150">Credit</th>
                        <th width="150">Balance</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sl = 1;
                    while ($row = $ledgerSummery->fetch_object()) {
                        $Dr = $row->Debit == 0 ? '' : formatMoney($row->Debit);
                        $Cr = $row->Credit == 0 ? '' : formatMoney($row->Credit);
                        $balance += $Dr - $Cr;

                        echo "<tr>";
                        echo "<td>$sl</td>";
                        echo "<td><a href='party_account.php?ledgerId=$row->LedgerId&monthId=$row->MonthId'>$row->Month</a></td>";
                        echo "<td align='right'>$Dr</td>";
                        echo "<td align='right'>$Cr</td>";
                        echo "<td align='right'>$balance</td>";
                        echo "</tr>";
                        $sl++;
                    }
                    ?>        
                </tbody>
            </table>
            <br>

            <div class="row-fluid">
                <div class="box span12" style="background-color:white;"> 
                    <div id="container" style="min-width: 300px; height: 300px;"></div>
                </div>
            </div>

        </div>
    </div><!--/span-->

</div>	


<script type="text/javascript">
    $(document).ready(function() {


        var options = {
            chart: {
                renderTo: 'container',
                type: 'column'
            },
            title: {
                text: "Mothly Transaction",
                x: -20 //center
            },
            subtitle: {
                text: '',
                x: -20
            },
            xAxis: {
                //categories: []
            },
            yAxis: {
                min: 0,
                title: {
                    text: "Taka '000' (BDT)"
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                        '<td style="padding:0"><b>{point.y:.1f} Tk</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: []
        };
        $.getJSON("get_ledger_summery.php?ledgerId=<?php echo $ledgerId; ?>", function(json) {

            options.xAxis.categories = json[0]['data'];
           
                options.series[0] = json[1];
            

            chart2 = new Highcharts.Chart(options);
        });

    });
</script>

<?php include '../body/footer.php'; ?>




