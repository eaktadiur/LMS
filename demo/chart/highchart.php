<?php

include '../lib/DbManager.php';
include '../body/header.php';
?>

<script type="text/javascript">
    $(document).ready(function() {
        var options = {
            chart: {
                renderTo: 'container',
                type: 'line',
                marginRight: 130,
                marginBottom: 40
            },
            title: {
                text: 'Dachgeschoss',
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
                title: {
                    text: 'Temperatur & Luftfeuchtigkeit'
                },
                plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
            },
            tooltip: {
                formatter: function() {
                    return '<b>' + this.series.name + '</b><br/>' +
                            this.x + ': ' + this.y;
                }
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'top',
                x: -10,
                y: 100,
                borderWidth: 0
            },
            series: []
        };

        $.getJSON("data.php", function(json) {
            options.xAxis.categories = json[0]['data'];

            for (var i = 0, num; num = json[1].data[i]; i++) {
                json[1].data[i] = parseFloat(num);
            }
            options.series[0] = json[1];


            for (var i = 0, num; num = json[2].data[i]; i++) {
                json[2].data[i] = parseFloat(num);
            }
            options.series[1] = json[2];


            chart = new Highcharts.Chart(options);
        });


        /*
         var json = [{"name": "DATETIME", "data": ["2013-04-27 08:17:52", "2013-04-27 08:22:52", "2013-04-27 08:27:53", "2013-04-27 08:32:54", "2013-04-27 08:37:55", "2013-04-27 08:42:55", "2013-04-27 08:47:56", "2013-04-27 08:52:57", "2013-04-27 08:57:58", "2013-04-27 09:02:58", "2013-04-27 09:07:59", "2013-04-27 09:13:00"]}, {"name": "dg_t01", "data": ["22.40", "22.40", "22.40", "22.40", "22.30", "22.30", "22.40", "22.40", "22.40", "22.40", "22.40", "22.40"]}, {"name": "dg_h01", "data": ["40.20", "40.40", "40.50", "40.80", "40.70", "40.70", "40.80", "40.90", "41.00", "41.00", "40.90", "40.70"]}];
         
         
         
         options.xAxis.categories = json[0]['data'];
         for (var i = 0, num; num = json[1].data[i]; i++)
         {
         json[1].data[i] = parseFloat(num);
         }
         
         options.series[0] = json[1];
         for (var i = 0, num; num = json[2].data[i]; i++)
         {
         json[2].data[i] = parseFloat(num);
         }
         options.series[1] = json[2];
         chart = new Highcharts.Chart(options);
         
         
         
         
         options.xAxis.categories = json[0]['data'];
         for (var i = 0, num; num = json[1].data[i]; i++)
         {
         json[1].data[i] = parseFloat(num);
         }
         options.series[0] = json[1];
         for (var i = 0, num; num = json[2].data[i]; i++)
         {
         json[2].data[i] = parseFloat(num);
         }
         options.series[1] = json[2];
         chart = new Highcharts.Chart(options);
         
         $.getJSON("data.php", function(json) {
         options.xAxis.categories = json[0]['data'];
         options.series[0] = json[1];
         options.series[1] = json[2];
         chart = new Highcharts.Chart(options);
         });
         */
    });
</script>

<script src="../../public/Highcharts-3.0.2/js/highcharts.js"></script>
<script src="../../public/Highcharts-3.0.2/js/modules/exporting.js"></script>
<div id="container" style="width: 1000px; height: 400px; margin: auto"></div>


<?php include '../body/footer.php'; ?>