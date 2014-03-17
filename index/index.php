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
        $.getJSON("get_load_profit.php", function(json) {

            var chart;
            chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    type: 'column'
                },
                title: {
                    text: 'Loan Collection'
                },
                subtitle: {
                    text: 'Monthly'
                },
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
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
                series: json


            });
        });


        var options = {
            chart: {
                renderTo: 'container2',
                type: 'column'
            },
            title: {
                text: "Employee Wise Collection",
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
        $.getJSON("get_user_collection.php", function(json) {

            options.xAxis.categories = json[0]['data'];
            for (var j = 1; j <= json.total; j++) {
                options.series[j - 1] = json[j];
            }

            chart2 = new Highcharts.Chart(options);
        });


        var options2 = {
            chart: {
                renderTo: 'container3',
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false
            },
            title: {
                text: 'Employee Wise Collection'
            },
            tooltip: {
                formatter: function() {
                    return '<b>' + this.point.name + '</b>: ' + parseFloat(this.percentage).toFixed(2) + ' %';
                }
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        color: '#000000',
                        connectorColor: '#000000',
                        formatter: function() {
                            return '<b>' + this.point.name + '</b>: ' + parseFloat(this.percentage).toFixed(2) + ' %';
                        }
                    }
                }
            },
            series: [{
                    type: 'pie',
                    name: 'Browser share',
                    data: []
                }]
        };

        $.getJSON("get_user_collection2.php", function(json) {
            options2.series[0].data = json;
            chart = new Highcharts.Chart(options2);
        });

        $('#DisburseSaving').highcharts({
            data: {
                table: document.getElementById('datatable')
            },
            chart: {
                type: 'column'
            },
            title: {
                text: 'Monthly Loan Disbus Report'
            },
            yAxis: {
                allowDecimals: false,
                title: {
                    text: 'Units'
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
                <div class="box span3">
                    <table id="datatable" class="table">
                        <thead>
                            <tr>
                                <th>Month</th>
                                <th>Disburse</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php while ($row = $result->fetch_object()) { ?>
                                <tr>
                                    <th><?php echo $row->MonthName; ?></th>
                                    <td><?php echo $row->DisbusAmount; ?></td>
                                </tr>
                            <?php }
                            ?>
                        </tbody>
                    </table>
                </div>
                <div class="box span9" style="background-color:white;"> 
                    <div id="DisburseSaving" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>


            <div class="row-fluid">
                <div class="box span12 " style="background-color:white;"> 
                    <div id="container" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row-fluid">
                <div class="box span6" style="background-color:white;float: left"> 
                    <div id="container2" style="min-width: 300px; height: 500px;"></div>
                </div>
                <div class="box span6" style="background-color:white; float: left"> 
                    <div id="container3" style="min-width: 300px; height: 500px;"></div>
                </div>
            </div>



        </div>
    </div><!--/span-->

</div>	






<?php
include_once '../body/footer.php';
?>
