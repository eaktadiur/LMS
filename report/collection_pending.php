<?php
include '../lib/DbManager.php';
include_once './report.php';

$date = getParam('date');
$collectionId = getParam('collectionId');

include("../body/header.php");
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span> 
                <a href="#" class="button">Report</a>
            </h3>
        </div>
        <div class="box-content">
            <form action="" method="GET">
                <table class="table">
                    <tr>
                        <td>Collection : </td>
                        <td><?php comboBox('collectionId', $weeklist, "$collectionId", TRUE); ?></td>
                        <td>Date: </td>
                        <td align="left"><input type="text" name="date" required class="datepicker" value="<?php echo $date; ?>" /></td>
                    </tr>
                </table>
                <button type="submit" value="save" name="save" class="btn btn-primary">
                    <i class="icon-white icon-search"></i> 
                    Search
                </button>
            </form>

            <div class="center"><h2>Collection Pending</h2></div>
            <div class="table-responsive">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                    <th width="30">S/N</th>
                    <th>Customer Name <i class="icon-filter"/></th>
                    <th width="150">Collect Person <i class="icon-filter"/></th>
                    <th width="50">Principal</th>
                    <th width="50">Interest</th>
                    <th width="50">Total</th>
                    </thead>
                    <tbody>
                        <?php
                        $customerList = getPendingCustomerByDate($companyId, "$date", "$collectionId");
                        while ($row = $customerList->fetch_object()) {
                            $total = $row->PrincipalAmount + $row->InterestAmount;
                            ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo $row->LedgerName; ?> </td>
                                <td><?php echo $row->EmployeeName; ?> </td>
                                <td align="right"><?php echo $row->PrincipalAmount; ?></td>
                                <td align="right"><?php echo $row->InterestAmount; ?></td>
                                <td align="right"><?php echo formatMoney($total); ?></td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
            <br/>

        </div><!--/span-->
    </div>	
</div>


<?php include '../body/footer.php'; ?>
