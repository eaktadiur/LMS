<?php
include '../lib/DbManager.php';

include '../body/header.php';
$result = query("CALL reportMonthlyDisburse($companyId, '', '')");
?>
<script src="../public/Highcharts-3.0.9/js/highcharts.js"></script>
<script src="../public/Highcharts-3.0.9/js/modules/exporting.js"></script>
<script src="../public/Highcharts-3.0.9/js/modules/data.js"></script>

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
                text: 'Monthly Revinue Report'
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


        $('#revinue').highcharts({
            data: {
                table: document.getElementById('datatable2')
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Monthly Debit Credit Report'
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

        $('#profit').highcharts({
            data: {
                table: document.getElementById('datatable3')
            },
            chart: {
                type: 'pie'
            },
            title: {
                text: 'Monthly Profit Report'
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





<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Dashboard</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="row-fluid">
                <div class="box span4 hidden-xs">
                    <table id="datatable" class="table table-condensed table-striped table-bordered bootstrap-datatable">
                        <thead>
                            <tr>
                                <th>Month</th>
                                <th>Sales</th>
                                <th>Payment</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($m = 1; $m <= 12; $m++) { ?>
                                <tr>
                                    <td><?php echo date("F", mktime(0, 0, 0, $m)); ?></td>
                                    <td><?php echo rand(150000, 1500000); ?></td>
                                    <td><?php echo rand(50000, 500000); ?></td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="box span8" style="background-color:white;"> 
                    <div id="DisburseSaving" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="box span4">
                    <table id="datatable2" class="table table-condensed table-striped table-bordered bootstrap-datatable">
                        <thead>
                            <tr>
                                <th>Month</th>
                                <th>Credit</th>
                                <th>Debit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($m = 1; $m <= 12; $m++) { ?>
                                <tr>
                                    <td><?php echo date("F", mktime(0, 0, 0, $m)); ?></td>
                                    <td><?php echo rand(50000, 500000); ?></td>
                                    <td><?php echo rand(50000, 500000); ?></td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="box span8" style="background-color:white;"> 
                    <div id="revinue" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>

            <div class="row-fluid">
                <div class="box span4">
                    <table id="datatable3" class="table table-condensed table-striped table-bordered bootstrap-datatable">
                        <thead>
                            <tr>
                                <th>Month</th>
                                <th>Profit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php for ($m = 1; $m <= 12; $m++) { ?>
                                <tr>
                                    <td><?php echo date("F", mktime(0, 0, 0, $m)); ?></td>
                                    <td><?php echo rand(5000, 50000); ?></td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="box span8" style="background-color:white;"> 
                    <div id="profit" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>





        </div>
    </div><!--/span-->

</div>	






<?php
include_once '../body/footer.php';
?>
