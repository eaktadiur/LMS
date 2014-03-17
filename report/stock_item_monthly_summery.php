
<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$id = getParam('id');


$stock_item = Stock_item_details($id);
?>

<a href="javascript:history.back(1)" class="btn btn-primary ">
    <i class="icon icon-white icon-arrow-left"></i>  Back</a>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Report</a><span class="divider"> /</span>
                <a href="#">Stock Monthly Report</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="table-responsive">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th width="30">S/N</th>
                            <th>Particular</th>
                            <th width="120" align="right">Quantity</th>
                            <th width="120" align="right">Rate</th>
                            <th width="120" align="right">Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sl = 1;
                        while ($row = $stock_item->fetch_object()) {
                            $rate = formatMoney($row->Total / $row->Qty);
                            echo "<tr>";
                            echo "<td>$sl</td>";
                            echo "<td><a href=''>$row->Product</a></td>";
                            echo "<td>$row->Qty $row->Name</td>";
                            echo "<td>$rate</td>";
                            echo "<td>$row->InTotal</td>";
                            echo "</tr>";
                            $sl++;
                        }
                        ?>        
                    </tbody>

                </table>
            </div>
        </div>
    </div>
</div>


<?php include '../body/footer.php'; ?>




