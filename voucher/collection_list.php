<?php
include '../lib/DbManager.php';




$gridList = getDailyCollectionList($companyId);
include("../body/header.php");
?>

<!--<script src="../public/js/custom.js"></script>-->


<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Collection List</a>
            </h3>
        </div>
        <div class="box-content">
            <form name='requisition' action="<?php echo $_SERVER['PHP_SELF'] ?>" method='post' id="requisition">
                <table class="table table-striped table-bordered bootstrap-datatable">
                    <thead>
                    <th width="40">S/N</th>
                    <th>Date</th>
                    <th>Customer</th>
                    <th>Voucher Type</th>
                    <th>Total</th>
                    <th width="80">Action</th>
                    </thead>
                    <tbody>
                        <?php while ($row = $gridList->fetch_object()) { ?>
                            <tr>
                                <td><?php echo ++$sl; ?></td>
                                <td><?php echo bddate($row->CreatedOn); ?></td>
                                <td><?php echo $row->CName; ?></td>
                                <td><?php echo $row->LoanTerm; ?></td>
                                <td align="right"><?php //echo $row->PreviousLoanAmount; ?></td>
                                <td>
                                    <?php viewIcon("#"); ?>
                                    <?php editIcon("#"); ?>
                                    <?php deleteIcon(''); ?>
                                </td>
                            </tr>

                        <?php } ?>
                    </tbody>
                </table>
                <div class="form-actions">
                    <a class="btn btn-primary" href="collection_voucher.php?mode=new">
                        <i class="icon icon-add"></i> 
                        Add New
                    </a>
                </div>  
            </form>    
        </div>
    </div><!--/span-->

</div>	


<?php
include '../body/footer.php';
?>
