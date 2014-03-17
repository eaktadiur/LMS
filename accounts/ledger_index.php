<?php
include_once '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 50 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;
$totalRow = getLedgerCount($search, $companyId);



$ledgerList = getLedgerList($companyId, $search, $start, $end);
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
                <a class="btn btn-primary" href="ledger_entry.php?mode=new">
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
                    <th>Active <i class="icon-filter"/></th>
                    <th>Opening Dr<i class="icon-filter"/></th>
                    <th width="100">Opening Cr <i class="icon-filter"/></th>
                    <th width="80">Action</th>
                    </thead>
                    <tbody>
                        <?php while ($row = $ledgerList->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td><?php echo $row->group_name; ?></td>
                                <td><?php echo $row->isActive; ?></td>
                                <td align="right"><?php echo $row->OpenningDr; ?></td>
                                <td align="right"><?php echo $row->OpenningCr; ?></td>
                                <td>
                                    <?php viewIcon("ledger_entry.php?searchId=$row->LedgerId"); ?>
                                    <?php editIcon("ledger_entry.php?searchId=$row->LedgerId"); ?>
                                    <?php deleteIcon(''); ?>
                                </td>
                            </tr>

                        <?php } ?>
                    </tbody>
                </table>
                <a class="btn btn-primary" href="ledger_entry.php?mode=new">
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
