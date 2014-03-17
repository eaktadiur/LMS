<?php
include '../lib/DbManager.php';
include '../body/header.php';


$result = query("CALL getDailyCreditReport('$companyId', '2014-1-1', '2014-1-1')");
?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h3>
                <a href="#">Home</a><span class="divider"> /</span>
                <a href="#">Daily Credit Voucher</a>
            </h3>
        </div>
        <div class="box-content">

            <div class="center">
                <h2><?php echo $companyName; ?></h2>
                <h3>Daily Report</h3>
            </div>

            <div class="table-responsive">
                <table style="font-size: 11px;" class="table table-condensed table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th rowspan="2">S/N</th>
                            <th rowspan="2">Name</th>
                            <th colspan="6">Saving Deposit</th>
                            <th colspan="2">Weekly Loan Collection</th>
                            <th colspan="2">Monthly Loan Collection </th>
                            <th colspan="2">First Loan</th>
                            <th rowspan="2">Admi. Free</th>
                            <th rowspan="2">Book Free</th>
                            <th rowspan="2">Form. Free</th>
                            <th rowspan="2">DPS</th>
                            <th rowspan="2">Other</th>
                        </tr>
                        <tr>
                            <th>2 Years</th>
                            <th>4 Years</th>
                            <th>Weekly</th>
                            <th>Monthly</th>
                            <th>Child</th>
                            <th>Enter</th>

                            <th>Principal</th>
                            <th>Service Charge</th>

                            <th>Principal</th>
                            <th>Service Charge</th>

                            <th>Principal</th>
                            <th>Service Charge</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        if ($result) {
                            while ($row = $result->fetch_object()) {
                                ?>
                                <tr>
                                    <td><?php echo ++$sl; ?></td>
                                    <td><?php echo $row->EmployeeName; ?></td>
                                    <td class="right"><?php echo formatMoney($row->TwoYears); ?></td>
                                    <td class="right"><?php echo formatMoney($row->FourYears); ?></td>
                                    <td class="right"><?php echo formatMoney($row->Weekly); ?></td>
                                    <td class="right"><?php echo formatMoney($row->Monthly); ?></td>
                                    <td class="right"><?php echo formatMoney($row->Child); ?></td>
                                    <td class="right"><?php echo formatMoney($row->EnterPraner); ?></td>
                                    <td class="right"><?php echo formatMoney($row->weeklyPrincipal); ?></td>
                                    <td class="right"><?php echo formatMoney($row->weeklyInterest); ?></td>
                                    <td class="right"><?php echo formatMoney($row->MonthlyPrincipal); ?></td>
                                    <td class="right"><?php echo formatMoney($row->MonthlyInterest); ?></td>
                                    <td class="right"><?php echo formatMoney($row->FirstPrincipal); ?></td>
                                    <td class="right"><?php echo formatMoney($row->FirstInterest); ?></td>
                                    <td class="right"><?php echo formatMoney($row->AdminFee); ?></td>
                                    <td class="right"><?php echo formatMoney($row->BookFee); ?></td>
                                    <td class="right"><?php echo formatMoney($row->FormFree); ?></td>
                                    <td class="right"><?php echo formatMoney($row->DPS); ?></td>
                                    <td class="right"><?php echo formatMoney($row->Other); ?></td>
                                </tr>

                                <?php
                            }
                        }
                        ?>

                    </tbody>

                </table>
            </div>


        </div>
    </div>
</div><!--/span-->

<?php include '../body/footer.php'; ?>
