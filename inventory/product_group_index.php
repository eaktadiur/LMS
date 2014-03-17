<?php
include_once '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 50 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;
$totalRow = getProductGroupCount($companyId);

$productProupList = getProductGroupList($companyId, $search, $start, $end);

include '../body/header.php';
?>

<script type="text/javascript" src="stock_group.js"></script>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Dashboard</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a class="btn btn-primary" href="product_group_entry.php">
                    <i class="icon-white icon-plus-sign"></i> Add New
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>

                <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Name <i class="icon-filter"/></th>
                    <th>Under <i class="icon-filter"/></th>
                    <th width="80">Action</th>
                    </thead>
                    <tbody>
                        <?php while ($row = $productProupList->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Name; ?></td>
                                <td><?php echo $row->Under; ?></td>
                                <td>
                                    <?php viewIcon("product_group_entry.php?searchId=$row->ProductGroupId"); ?>
                                    <?php editIcon("product_group_entry.php?searchId=$row->ProductGroupId"); ?>
                                    <?php deleteIcon(''); ?>
                                </td>
                            </tr>

                        <?php } ?>
                    </tbody>
                </table>
                <a class="btn btn-primary" href="product_group_entry.php">
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