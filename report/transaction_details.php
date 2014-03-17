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

$dayBookResult = transactionDetails($offset, $rows, $ledgerId, $companyId);
$openingBalanceResult = openingBalanceTrandactionDetails($ledgerId, $companyId, $fromDate);
?>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider">/</span> 
                <a href="#" class="button">Transaction Details</a>
            </h3>
        </div>
        <div class="box-content">
            <form action="" method="GET">
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
            </form>
            <table class="table table-striped table-bordered bootstrap-datatable">
                <thead>
                    <tr>
                        <th width="30">S/N</th>
                        <th width="80">Date</th>
                        <th>Particular</th>
                        <th width="100">Tran Type</th>
                        <th width="100">Tran No</th>
                        <th width="100">Ddebit</th>
                        <th width="100">Credit</th>
                    </tr>
                </thead>

                <?php
                while ($row = $dayBookResult->fetch_object()) {
                    $sumDr+=$row->DebitAmount;
                    $sumCr+=$row->CreditAmount;
                    ?>
                    <tr>
                        <td><?php echo ++$sl; ?></td>
                        <td><a href='<?php echo $row->link; ?>?mode=view&searchId=<?php echo $row->TransactionId; ?>'><span style="font-weight:bold;"><?php echo $row->TranDate; ?></span></a></td>
                        <td><?php echo $row->Name; ?></td>
                        <td><?php echo $row->VoucherType; ?></td>
                        <td><?php echo $row->TranNo; ?></td>
                        <td align="right"><?php echo $row->DebitAmount; ?></td>
                        <td align="right"><?php echo $row->CreditAmount; ?></td>
                    </tr>
                    <?php
                }
                $OpBalanceCr = $openingBalanceResult->OPBalance > 0 ? $openingBalanceResult->OPBalance : '';
                $OpBalanceDr = $openingBalanceResult->OPBalance < 0 ? $openingBalanceResult->OPBalance : '';

                $closingDr = $OpBalanceDr + $sumDr;
                $closingCr = $OpBalanceCr + $sumCr;
                ?>
                <tr>
                    <td></td>
                    <td></td>
                    <td align="right" colspan="3">Opening Balance</td>
                    <td align="right" ><?php echo $OpBalanceCr; ?></td>
                    <td align="right" ><?php echo $OpBalanceDr; ?></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td align="right" colspan="3">Current Sum</td>
                    <td align="right" ><?php echo $sumDr; ?></td>
                    <td align="right" ><?php echo $sumCr; ?></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td align="right" colspan="3">Closing Balance</td>
                    <td align="right" ><?php echo $closingDr; ?></td>
                    <td align="right" ><?php echo $closingCr; ?></td>
                </tr>
            </table> 
        </div><!--/span-->
    </div>	
</div>

<?php include '../body/footer.php'; ?>