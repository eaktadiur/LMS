<?php
include '../lib/DbManager.php';

$fromDate = getParam('fromDate');
$fromDate = $fromDate == '' ? today() : $fromDate;

$toDate = getParam('toDate');
$toDate = $toDate == '' ? today() : $toDate;


include '../body/header.php';
?>
<div class="box span12">
    <div class="box-header well" data-original-title>
        <h3>
            <a href="#">Home</a><span class="divider"> /</span>
            <a href="#">Balance Sheet</a>
        </h3>
    </div>
    <div class="box-content">
        <div class="row-fluid">
            <form action="" method="GET">
                <table class="table" width="100%">
                    <tr>
                        <td>From: </td>
                        <td><input type="text" name="fromDate" class="easyui-datebox" value="<?php echo $fromDate; ?>"</td>
                        <td>To :</td>
                        <td><input type="text" name="toDate" class="easyui-datebox" value="<?php echo $toDate; ?>" /></td>
                    </tr>
                </table>
                <button type="submit" class="btn btn-primary">
                    <i class="icon-white icon-plus-sign"></i> Search
                </button>
            </form>
        </div>


        <div class="row-fluid">
            <div class="span6">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th>Liabilities</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $resultLibilities = query("CALL balanceSheetLibilities($companyId);");
                        if ($resultLibilities) {

                            while ($row = $resultLibilities->fetch_object()) {
                                $libilitiesGrandTotal+=$row->total;

                                echo "<tr>";
                                echo "<td><a href='group_account_summery.php?groupid=$row->group_id'>$row->group_name</a></td>";
                                echo "<td align='right'>$row->total</td>";
                                echo "</tr>";
                            }
                            $resultLibilities->close();
                            $mysqli->next_result();
                        }
                        ?>        
                    </tbody>
                </table>
            </div>
            <div class="span6">
                <table class="table table-condensed table-striped table-bordered bootstrap-datatable">
                    <thead>
                        <tr>
                            <th>Assets</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $resultAssess = query("CALL balanceSheet($companyId);");
                        if ($resultAssess) {
                            while ($row = $resultAssess->fetch_object()) {
                                $AssetsGrandTotal+=$row->total;
                                echo "<tr>";
                                echo "<td><a href='group_account_summery.php?groupid=$row->group_id'>$row->group_name</a></td>";
                                echo "<td align='right'>$row->total</td>";
                                echo "</tr>";
                            }
                            $resultAssess->close();
                            $mysqli->next_result();
                        }
                        ?>        
                    </tbody>

                </table>
            </div>
        </div>



        
        <div class="row-fluid">
            <div class="span6">
                <table class="table">
                    <tr>
                        <td>Liabilities Total:</td>
                        <td class="right"><?php echo formatMoney($libilitiesGrandTotal); ?></td>
                    </tr>
                </table>
            </div>
            <div class="span6">
                <table class="table">
                    <tr>
                        <td>Assets Total:</td>
                        <td class="right"><?php echo formatMoney($AssetsGrandTotal); ?></td>
                    </tr>
                </table>
            </div>
        </div>

    </div><!-- box-content-->
</div><!--/span12 -->


<?php include '../body/footer.php'; ?>




