
<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';


$stock_item = Stock_item($companyId);
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Report</a><span class="divider"> /</span>
                <a href="#">Stock Balance</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <a href="javascript:history.back(1)" class="btn btn-primary">Back</a>
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th width="30">S/N</th>
                            <th>Stock Group</th>
                            <th align="right">Qty</th>
                            <th align="right">Rate</th>
                            <th align="right">Tota</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sl = 1;
                        while ($row = $stock_item->fetch_object()) {
                            $rate = formatMoney($row->total / $row->qty);
                            echo "<tr>";
                            echo "<td>$sl</td>";
                            echo "<td><a href='stock_item_monthly_summery.php?id=$row->ProductGroupId'>$row->stock_group</a></td>";
                            echo "<td width='100' align='right'>$row->qty</td>";
                            echo "<td width='100' align='right'>$rate</td>";
                            echo "<td width='100' align='right'>$row->total</td>";
                            echo "</tr>";
                            $sl++;
                        }
                        ?>        
                    </tbody>

                </table>

            </div>


        </div>
    </div><!--/span-->

</div>


<?php include '../body/footer.php'; ?>




