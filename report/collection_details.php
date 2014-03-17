<?php
include '../lib/DbManager.php';
include '../body/header.php';
include './report.php';

$ledgerId = getParam('ledgerId');
$fromDate = getParam('fromDate');
//$fromDate = $fromDate == "" ? firstDayMonth() : $fromDate;
$toDate = getParam('toDate');
//$toDate = $toDate == "" ? lasDayMonth() : $toDate;

$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
$rows = isset($_POST['rows']) ? intval($_POST['rows']) : 20;
$offset = ($page - 1) * $rows;

$dayBookResult = ledgerDetails($offset, $rows, $ledgerId, $companyId);
$openingBalanceResult = openingBalanceTrandactionDetails($ledgerId, $companyId, $fromDate);
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Collection Balance</a>
            </h3>
        </div>
        <div class="box-content">
            <!--            <form action="" method="GET">
                            <table class="">
                                <tr>
                                    <td align="right">
                                        From :<input type="text" name="fromDate" class="datepicker" value="<?php echo $fromDate; ?>"/> 
                                        To: <input type="text" name="toDate" class="datepicker" value="<?php echo $toDate; ?>"/>
                                    </td>
                                </tr>
                            </table>
                            <button onclick="goBack();" class="btn btn-primary">
                                <i class="icon-white icon-arrow-left"></i> Back
                            </button>
                            <button type="submit" class="btn btn-primary">
                                <i class="icon-white icon-search"></i> Search
                            </button>
                        </form>-->
            <table class="table table-striped table-bordered bootstrap-datatable">
                <thead>
                    <tr>
                        <th width="30" rowspan='2'>S/N</th>
                        <th rowspan='2'>Particular</th>
                        <th width="100" colspan="2">Credit</th>
                        <th width="100" rowspan='2'>Total</th>
                    </tr>
                    <tr>
                        <th>Principal</th>
                        <th>Interest</th>
                    </tr>
                </thead>

                <?php
                while ($row = $dayBookResult->fetch_object()) {
                    $sumDr+=$row->DebitAmount;
                    $sumCr+=$row->CreditAmount;
                    $PrincipalAmount+=$row->PrincipalAmount;
                    $InterestAmount+=$row->InterestAmount;
                    ?>
                    <tr>
                        <td><?php echo ++$sl; ?></td>
                        <td><?php echo $row->Name; ?></td>
                        <td align="right"><?php echo $row->PrincipalAmount; ?></td>
                        <td align="right"><?php echo $row->InterestAmount; ?></td>
                        <td align="right"><?php echo formatMoney($row->PrincipalAmount + $row->InterestAmount); ?></td>
                    </tr>
                    <?php
                }
                $OpBalanceCr = $openingBalanceResult->OPBalance > 0 ? $openingBalanceResult->OPBalance : '';
                $OpBalanceDr = $openingBalanceResult->OPBalance < 0 ? $openingBalanceResult->OPBalance : '';

                $closingDr = $OpBalanceDr + $sumDr;
                $closingCr = $OpBalanceCr + $sumCr;
                ?>
                <tfoot>
                    <tr>
                        <td></td>
                        <td align="right">Total</td>
                        <td align="right"><?php echo formatMoney($PrincipalAmount); ?></td>
                        <td align="right"><?php echo formatMoney($InterestAmount); ?></td>
                        <td align="right"><?php echo formatMoney($PrincipalAmount + $InterestAmount); ?></td>
                    </tr>
                </tfoot>
            </table> 
        </div><!--/span-->
    </div>	
</div>

<?php include '../body/footer.php'; ?>