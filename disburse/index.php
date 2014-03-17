<?php
include '../lib/DbManager.php';

$search = getParam('search');
$showPerPage = getParam('showPerPage');
$perpage = $showPerPage == '' ? 50 : $showPerPage;
$page = getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;
$totalRow = getDisbusCount($companyId);

$gridList = getLoanDisburseList($companyId, $search, $start, $end);
include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Disburse List</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a class="btn btn-primary" href="disburse_new.php?mode=new">
                    <i class="icon icon-white icon-xls"></i> 
                    Add New
                </a>
                <?php
                comboBox('showPerPage', $showDataList, "$perpage", FALSE, 'showPerPage');
                PagingBoostrap("?", $totalRow, $perpage);
                ?>

                <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Date <i class="icon-filter"/></th>
                    <th>Disburse Code <i class="icon-filter"/></th>
                    <th>Ledger <i class="icon-filter"/></th>
                    <th>Customer <i class="icon-filter"/></th>
                    <th>Term<i class="icon-filter"/></th>
                    <th width="100">Collect <br> Person <i class="icon-filter"/></th>
                    <th>Loan <i class="icon-filter"/></th>
                    <th>Rate<i class="icon-filter"/></th>
                    <th>Principal<i class="icon-filter"/></th>
                    <th>Interest <i class="icon-filter"/></th>
                    <th>Total</th>
                    <th>Active</th>
                    <th width="80">Action</th>
                    </thead>
                    <tbody>
                        <?php while ($row = $gridList->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->Date; ?></td>
                                <td><?php echo $row->Code; ?></td>
                                <td><?php echo $row->ledgerName; ?></td>
                                <td><?php echo $row->CName; ?></td>
                                <td><?php echo $row->LoanTerm; ?></td>
                                <td><?php echo $row->empName; ?></td>
                                <td align="right"><?php echo $row->LoanAmount; ?></td>
                                <td align="right"><?php echo $row->InterestRate; ?></td>
                                <td align="right"><?php echo $row->PrincipalAmount; ?></td>
                                <td align="right"><?php echo $row->InterestAmount; ?></td>
                                <td align="right"><?php echo $row->Installment; ?></td>
                                <td><?php echo $row->IsActive; ?></td>
                                <td>
                                    <?php viewIcon("disburse_view.php?searchId=$row->LoanDisburseId"); ?>
                                    <?php editIcon("disburse_new.php?searchId=$row->LoanDisburseId"); ?>
                                    <?php deleteIcon(''); ?>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
                <a class="btn btn-primary" href="disburse_new.php?mode=new">
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
