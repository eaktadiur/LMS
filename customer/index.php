<?php
include '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 20 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;
$totalRow = getCustomercount($searchId, $companyId);


$result = getDataGrid($companyId, $search, $start, $end);
include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well hidden-print" data-original-title>
            <h3>
                <a onchange="" href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Customer List</a>
            </h3>
        </div>
        <div class="box-content">
            <div class="hidden-print">
                <a class="btn btn-primary" href="customer_entry.php?mode=new">
                    <i class="icon-white icon-plus-sign"></i> 
                    Add New
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$showPerPage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>
            </div>
            <table class="table table-condensed table-striped table-bordered  datatable">
                <thead>
                <th width="30">S/N</th>
                <th width="80">Code <i class="icon-filter"/></th>
                <th>Customer <i class="icon-filter"/></th>
                <th width="100">Admit Date <i class="icon-filter"/></th>
                <th width="80">Cell <i class="icon-filter"/></th>
                <!--<th width="80">Picture</th>-->
                <th width="100">Occupation <i class="icon-filter"/></th>
                <!--<th>Present Address</th>-->
                <th class="hidden-print" width="70">Action</th>
                </thead>
                <tbody>
                    <?php
                    $sl = 0;
                    while ($row = $result->fetch_object()) {
                        ?>
                        <tr>
                            <td><?php echo ++$sl; ?></td>
                            <td><?php echo $row->Code; ?></td>
                            <td><?php echo $row->Name; ?></td>
                            <td><?php echo $row->AdmitDate; ?></td>
                            <td><?php echo $row->Cell; ?></td>
                            <!--<td><a href="<?php echo $row->PicturePath; ?>" class="fancybox"><img src="<?php echo $row->PicturePath; ?>" height='40'></a></td>-->
                            <td><?php echo $row->Occupation; ?></td>
                            <!--<td align="right"><?php echo $row->PresentAddress; ?></td>-->
                            <td class="hidden-print" width="60">
                                <?php viewIcon("customer_view.php?searchId=$row->CustomerId"); ?>
                                <?php editIcon("customer_entry.php?searchId=$row->CustomerId"); ?>
                                <?php deleteIcon(''); ?>
                            </td>
                        </tr>

                    <?php } ?>
                </tbody>
            </table>
            <div class="hidden-print">
                <?php
                comboBox('showPerPage', $showDataList, "$showPerPage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>
            </div>
            <a class="btn btn-primary" href="customer_entry.php?mode=new">
                <i class="icon-white icon-plus-sign"></i> 
                Add New
            </a>


            <br/>
        </div>
    </div><!--/span-->

</div>	





<?php
include '../body/footer.php';
?>
