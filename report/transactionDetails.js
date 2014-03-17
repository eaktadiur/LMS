var ledgerId;
$(document).ready(function() {
    transactionDetails();

});
function transactionDetails() {
    ledgerId = $('#ledgerId').val();
    $('#dataGrid').datagrid({
        //title: 'Category List',
        iconCls: 'icon-edit',
        pagination: 'true',
        toolbar: "#toolbar",
        rownumbers: 'true',
        singleSelect: true,
        pageSize: 10,
        pagePosition: 'pos',
        idField: '',
        url: 'transactionDetails_get.php?ledgerId=' + ledgerId,
        columns: [[
                {field: 'TranDate', title: 'Date'},
                {field: 'Name', title: 'Particular', width: '400'},
                {field: 'TransactionType', title: 'Tran Type'},
                {field: 'TranNo', title: 'Tran No'},
                {field: 'DebitAmount', title: 'Dr', align: 'right'},
                {field: 'CreditAmount', title: 'Cr', align: 'right'}
            ]]

    });
}

function loadWindow() {
    $('#dataGrid').datagrid('load', {
        mode: ''
    });
}

function doSearch() {
    $('#dataGrid').datagrid('load', {
        cardNo: $("#cardNo").val(),
        firstName: $("#firstName").val(),
        officeTypeId: $('input[name="officeTypeId"]').val(),
        designationId: $('input[name="designationId"]').val(),
        branchDevision: $('input[name="branchDevision"]').val(),
        mode: 'search'
    });
}