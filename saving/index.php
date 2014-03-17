<?php
include '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 50 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;
$totalRow = getSavingsCount($search, $companyId);

$savingList = getSavingList($companyId, $search, $start, $end);
include '../body/header.php';
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Savings List</a>
            </h3>
        </div>
        <div class="box-content">
            <a class="btn btn-primary" href="saving_new.php?mode=new">
                <i class="icon-white icon-plus-sign"></i> 
                Add New
            </a>
            <?php
            comboBox('showPerPage', $showDataList, "$showPerPage", FALSE, 'showPerPage');
            PagingBoostrap("?", $totalRow, $perpage);
            ?>
            <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                    <tr>
                        <th width="30">S/N</th>
                        <th>Ledger <i class="icon-filter"/></th>
                        <th>Customer <i class="icon-filter"/></th>
                        <th width="80">Type <i class="icon-filter"/></th>
                        <th width="150">Person <i class="icon-filter"/></th>
                        <th width="80">Amount <i class="icon-filter"/></th>
                        <th width="80">Active <i class="icon-filter"/></th>
                        <th width="80">Actions</th>
                    </tr>
                </thead>   
                <tbody>
                    <?php while ($row = $savingList->fetch_object()) { ?>
                        <tr>
                            <td><?php echo ++$i; ?></td>
                            <td><?php echo $row->LName; ?></td>
                            <td><?php echo $row->CNmae; ?></td>
                            <td><?php echo $row->TName; ?></td>
                            <td><?php echo $row->empName; ?></td>
                            <td align="center"><?php echo $row->IsActive; ?></td>
                            <td align="right"><?php echo $row->CollectionAmount; ?></td>
                            <td class='center'>
                                <?php
                                viewIcon("#");
                                editIcon("saving_new.php?mode=edit&searchId=$row->SavingsId");
                                deleteIcon("#");
                                ?>
                            </td>
                        </tr>
                        <?php
                    }
                    ?>
                </tbody>
            </table>  
            <a class="btn btn-primary" href="saving_new.php?mode=new">
                <i class="icon-white icon-plus-sign"></i> 
                Add New
            </a>
            <?php PagingBoostrap("?", $totalRow, $perpage); ?>
        </div>
    </div><!--/span-->

</div>	


<?php
include '../body/footer.php';
?>