<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Schoolify LMS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
        <meta name="author" content="Muhammad Usman">
        <link rel='shortcut icon' type='image/x-icon' href='../public/images/favicon.ico'/>

        <!-- The styles -->
        <link id="bs-css" href="../public/css/bootstrap-redy.css" rel="stylesheet">


        <style type="text/css">
            body {
                padding-bottom: 40px;
            }


            .form-actions {
                padding: 17px 20px 18px;
                margin-top: 38px;
                margin-bottom: 18px;
                background-color: #f5f5f5;
                border-top: 1px solid #e5e5e5;
                *zoom: 1;
            }

            .pagination {
                height: 36px;
                margin: 0px 0;
            }
            .navbar-inner{

                background-repeat: repeat-x;
                border-radius:0px 0px;
            }
            .navbar .navbar-inner {
                /*background-color: #DDDDDD;*/
            }
            .accordion-heading {
                border: 1px solid #DDDDDD;
                border-radius: 0;
            }
            .accordion-heading > a:hover {
                text-decoration: none;
            }

            .accordion-group {
                border: 1px solid #E5E5E5;
                border-radius: 4px;
                margin-bottom: -2px;
            }

            .nav-tabs.nav-stacked > li > ul >li {
                list-style: none outside none;
            }

            .nav-tabs.nav-stacked > li > ul >li > a {
                border-top: 1px solid #DDDDDD;
                padding-left: 30px;
            }

            .nav-stacked > li > ul >li > a {
                margin-right: 0;
            }
            .nav-tabs > li > ul >li > a {
                padding: 8px 0px;
                text-decoration: none;
            }
            .nav-tabs > li > ul >li > a, .nav-pills > li > ul >li > a {
                line-height: 14px;
                margin-right: 2px;
                padding-left: 12px;
                padding-right: 12px;
            }
            .nav > li > ul >li > a {
                display: block;
            }

            ul{
                margin: 0 0 0px 0px;
                padding: 0;
            }


            .nav-list {
                margin-bottom: 0px;
                padding-left: 0px;
                padding-right: 0px;
            }

            .nav-list ul > li > a {
                padding-left: 50px;
                padding-top:7px;
                padding-bottom:7px;
            }

            .nav-list > li > a, .nav-list .nav-header{
                border-top: 1px solid #DDDDDD;
            }



        </style>


        <link href="../public/css/bootstrap-responsive.css" rel="stylesheet">
        <link href="../public/css/charisma-app.css" rel="stylesheet">
        <link href="../public/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
        <!--<link href='../public/css/fullcalendar.css' rel='stylesheet'>-->
        <!--<link href='../public/css/fullcalendar.print.css' rel='stylesheet'  media='print'>-->
        <link href='../public/css/chosen.css' rel='stylesheet'>
        <link href='../public/css/uniform.default.css' rel='stylesheet'>
        <link href='../public/css/colorbox.css' rel='stylesheet'>
        <link href='../public/css/jquery.cleditor.css' rel='stylesheet'>
        <link href='../public/css/jquery.noty.css' rel='stylesheet'>
        <link href='../public/css/noty_theme_default.css' rel='stylesheet'>
        <link href='../public/css/elfinder.min.css' rel='stylesheet'>
        <link href='../public/css/elfinder.theme.css' rel='stylesheet'>
        <link href='../public/css/jquery.iphone.toggle.css' rel='stylesheet'>
        <link href='../public/css/opa-icons.css' rel='stylesheet'>
        <!--<link href='../public/css/uploadify.css' rel='stylesheet'>-->
        <link href='../public/fancy_light_box/jquery.fancybox.css' rel='stylesheet'>
        <!--<link href='../public/css/datepicker.css' rel='stylesheet'>-->

        <!--<link href='../public/DataTables-1.9.4/media/css/jquery.dataTables.css' rel='stylesheet'>-->
        <!--<link href='../public/DataTables-1.9.4/extras/TableTools/media/css/TableTools.css' rel='stylesheet'>-->
        <!--<link href='../public/DataTables-1.9.4/media/css/jquery.dataTables_themeroller.css' rel='stylesheet'>-->
        <link href="../public/css/bootstrap-editable.css" rel="stylesheet">
        <link href="../public/css/bootstrap-filterable.css" rel="stylesheet" type="text/css" />
        <link href='../public/css/site.css' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="../public/css/print.css" media="print"/>

        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- The fav icon -->
        <link rel="shortcut icon" href="img/favicon.ico">
        <script src="../public/js/jquery-1.7.2.min.js"></script>
    </head>

    <body>
        <?php if ($userName) { ?>
            <!-- topbar starts -->
            <div class="navbar hidden-print">
                <div class="navbar-inner">
                    <div class="container-fluid">
                        <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        <a class="brand" href="../index.php"> <img alt="Logo" src="<?php echo $logoPath; ?>"  /></a>


                        <!-- user dropdown starts -->
                        <div class="btn-group pull-right" >
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-user"></i><span class="hidden-phone"> <?php echo $userName; ?></span>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="../common/user_settings.php">Profile</a></li>
                                <li class="divider"></li>
                                <li><a href="../common/logout.php?logout=true">Logout</a></li>
                            </ul>
                        </div>
                        <!-- user dropdown ends -->


                    </div>
                </div>
            </div>
            <!-- topbar ends -->
        <?php } ?>

        <div class="container-fluid">
            <div class="row-fluid">
                <?php if ($userName) { ?>
                    <!-- left menu starts -->
                    <div class="span2">
                        <div class="nav-collapse sidebar-nav">
                            <ul class="nav nav-tabs nav-stacked main-menu">
                                <?php getMenu($userName); ?>
<!--                                <li><a class='ajax-link' href=''><i class='icon-th-list'></i><span class='hidden-tablet'> Account Test</span></a>
                                    <ul>
                                        <li><a class='ajax-link' href=''><i class='icon-th-list'></i><span class='hidden-tablet'> Payment</span></a></li>
                                        <li><a class='ajax-link' href=''><i class='icon-th-list'></i><span class='hidden-tablet'> Received</span></a></li>
                                        <li><a class='ajax-link' href=''><i class='icon-th-list'></i><span class='hidden-tablet'> Sales</span></a></li>
                                        <li><a class='ajax-link' href=''><i class='icon-th-list'></i><span class='hidden-tablet'> Purchase</span></a></li>
                                    </ul>
                                </li>

                                <div class="accordion" id="accordion2">
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                                                Accounts
                                            </a>
                                        </div>
                                        <div id="collapseOne" class="accordion-body collapse in">
                                            <ul class="nav nav-list">
                                                <li>
                                                    <ul class="nav nav-list">
                                                        <li><a href="../accounts/group_index.php">Group</a></li>
                                                        <li><a href="../accounts/ledger_index.php">Ledger</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">
                                                Inventory
                                            </a>
                                        </div>
                                        <div id="collapseTwo" class="accordion-body collapse">
                                            <ul class="nav nav-list">
                                                <li>
                                                    <ul class="nav nav-list">
                                                        <li><a href="../inventory/product_group_index.php">Group</a></li>
                                                        <li><a href="../inventory/product_index.php">Product</a></li>
                                                        <li><a href="../inventory/product_index.php">Unit</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="accordion-group">
                                        <div class="accordion-heading">
                                            <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">
                                                Transaction
                                            </a>
                                        </div>
                                        <div id="collapseThree" class="accordion-body collapse">
                                            <ul class="nav nav-list">
                                                <li>
                                                    <ul class="nav nav-list">
                                                        <li><a href="../voucher/collection_voucher.php">Collection Voucher</a></li>
                                                        <li><a href="../voucher/accounting_voucher.php">Receive Voucher</a></li>
                                                        <li><a href="#">Inventory Voucher</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>-->
                            </ul>
                        </div><!--/.well -->
                    </div><!--/span-->
                    <!-- left menu ends -->
                <?php } ?>
                <div id="content" class="span10">
                    <!-- content starts -->

