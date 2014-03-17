<?php
include_once '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 50 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;



$voucherList = getVoucherList($companyId, $search, $start, $end);
include '../body/header.php';
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Ledger List</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a class="btn btn-primary" href="voucher_type_entry.php">
                    <i class="icon-white icon-plus-sign"></i> 
                    Add New
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>

                <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Name <i class="icon-filter"/></th>
                    <th>Group <i class="icon-filter"/></th>
                    <th width="80">Action</th>
                    </thead>
                    <tbody>
                        <?php while ($row = $voucherList->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td><?php echo $row->mainVoucher; ?></td>
                                <td>
                                    <?php viewIcon("voucher_type_entry.php?searchId=$row->VoucherTypeId"); ?>
                                    <?php editIcon("voucher_type_entry.php?searchId=$row->VoucherTypeId"); ?>
                                    <?php deleteIcon(''); ?>
                                </td>
                            </tr>

                        <?php } ?>
                    </tbody>
                </table>
                <a class="btn btn-primary" href="voucher_type_entry.php">
                    <i class="icon-white icon-plus-sign"></i> 
                    Add New
                </a>
                <?php PagingBoostrap("?", $totalRow, $perpage); ?>
            </div>
        </div>
    </div><!--/span-->

</div>	


<?php
include '../body/footer.php';
?>
