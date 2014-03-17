<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
        <meta name="keywords" content="jquery,ui,easy,easyui,web"/>
        <meta http-equiv="X-UA-Compatible" content="IE=8"/>


        <style type="text/css" media="screen">
            @import "../public/css/Site.css";
            @import "../public/fancy_light_box/jquery.fancybox.css";
            @import "../public/css/css3buttons.css";
            @import "../public/menu/css/superfish.css";
            @import "../jquery-ui-1.10.3/smoothness/jquery.ui.all.css";
            @import "../public/themes/default/easyui.css";
            @import "../public/themes/icon.css";
        </style>

        <script type="text/javascript" src="../public/js/jQuery-v1.7.2.js"></script>
        <script type="text/javascript" src="../jquery-ui-1.10.3/js/jquery-ui-1.10.3.custom.min.js"></script>
        <script type='text/javascript' src='../public/js/jquery.validate.min.js'></script>
        <script type='text/javascript' src='../public/fancy_light_box/jquery.fancybox.js'></script>
        <script type='text/javascript' src='../public/menu/js/superfish.js'></script>
        <script type='text/javascript' src='../public/menu/js/hoverIntent.js'></script>
        <script type='text/javascript' src='../public/js/headerScript.js'></script>
        <script type='text/javascript' src='../public/js/ajax.js'></script>
        <!--<script type='text/javascript' src="../public/js/jquery-ui-autocomplete.js"></script>-->
        <!--<script type='text/javascript' src="../public/js/jquery.select-to-autocomplete.min.js"></script>-->


        <!--[if IE 8]>
            <script type='text/javascript' src='../public/js/html5.js'></script>
        <![endif]-->

        <title>Schoolify ERP</title>

        <script type="text/javascript">
            $(document).ready(function() {

                jQuery('ul.sf-menu').superfish();
                $("table.ui-state-default thead tr:first th:nth-child(1)").css('width', '20');
                $('.fancybox').fancybox();
                $("#datagrid-btable").delegate("tr", "click", function() {
                    //$(this).addClass("even DTTT_selected").siblings().removeClass("even DTTT_selected");
                });
                //$("Table:not('[class^=datagride]') tr td input:text").css('width', '200');

            });

        </script>

    </head>

    <body> 

        <div id='fw_header'>
            <a id="company-branding" href='../index.php'><img src="../public/images/schoolifylogo.png" alt="ERP"  /></a>

            <div id="login"><a href="../admin/change_password.php" target="_blank" style="font-weight:bold" title="Change Password" ><?php echo $userName; ?></a>
                <a href='../index/index.php?logout=true'><img src="../public/images/logout.png" height="20" width="20" title="Log Out" /></a>
            </div>
            <div id="center"><?php $BranchDeptName . ', ' . $userName == '' ? 'Guest' : get_switcher_menu($userName); ?></div>
        </div>


        <div id="content" >
            