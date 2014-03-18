<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$ledgerId = getParam('ledgerId');


$cashFlowMonthly = cashFlowMonthly($companyId);
?>
<script src="../public/Highcharts-3.0.9/js/highcharts.js"></script>
<script src="../public/Highcharts-3.0.9/js/modules/exporting.js"></script>
<script src="../public/Highcharts-3.0.9/js/modules/data.js"></script>


<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse List</a>
            </h3>
        </div>
        
        <div class="box-content">

            <div class="row-fluid">
                <div class="span12">
                    <table id="datatable" class="table table-condensed table-striped table-bordered bootstrap-datatable">
                        <thead>
                            <tr>
                                <th>Month</th>
                                <th>In Flow</th>
                                <th>Out Flow</th>
                                <th>Nett Flow</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            while ($row = $cashFlowMonthly->fetch_object()) {
                                $nettFlow = $row->Dr - $row->Cr;
                                ?>
                                <tr>
                                    <td><?php echo $row->Month; ?></td>
                                    <td width="100"><?php echo formatMoney($row->Dr); ?></td>
                                    <td width="100"><?php echo formatMoney($row->Cr); ?></td>
                                    <td width="100"><?php echo formatMoney($nettFlow); ?></td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="row-fluid">
                <div class="box span12" style="background-color:white;"> 
                    <div id="DisburseSaving" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>

        </div>
    </div><!--/span-->
</div>	


<script type="text/javascript">
    $(document).ready(function() {


        $('#DisburseSaving').highcharts({
            data: {
                table: document.getElementById('datatable')
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Cash Flow Monthly'
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: 'Tk in 000'
                }
            },
            tooltip: {
                formatter: function() {
                    return '<b>' + this.series.name + '</b><br/>' +
                            (this.y).formatMoney(2, '.', ',') + 'Tk';
                }
            }
        });


    });
</script>

<?php include '../body/footer.php'; ?>