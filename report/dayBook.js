
$(document).ready(function() {
    dayBook();

    $('.combo-value').change(function() {
        $('#dataGrid').datagrid('load', {
            fromDate: $('input[name="fromDate"]').val(),
            toDate: $('input[name="toDate"]').val()
        });
    });
});
function dayBook() {
    var fromDate = $('input[name="fromDate"]').val();
    var toDate = $('input[name="toDate"]').val();
    $('#dataGrid').datagrid({
        //title: 'Category List',
        iconCls: 'icon-edit',
        pagination: 'true',
        toolbar: "#toolbar",
        rownumbers: 'true',
        singleSelect: true,
        pageSize: 10,
        pagePosition: 'pos',
        idField: 'TransactionId',
        url: 'daybook_get.php?fromDate=' + fromDate + '&toDate=' + toDate,
        columns: [[
                {field: 'TranDate', title: 'Date', align: 'center',
                    formatter: function(value, row, index) {
                        var transactionId = row.TransactionId;
                        var tranDate = row.TranDate;
                        return '<a href=' + row.link + '?mode=view&searchId=' + transactionId + '><span style="font-weight:bold;">' + tranDate + '</span></a>';
                    }},
                {field: 'Name', title: 'Particular', width: '420'},
                {field: 'voucherType', title: 'Tran Type'},
                {field: 'TransactionId', title: 'Tran No', align: 'center'},
                {field: 'DebitAmount', title: 'Dr', align: 'right', width: '150'},
                {field: 'CreditAmount', title: 'Cr', align: 'right', width: '150'}
            ]]

    });
}

function doSearch() {
    $('#dataGrid').datagrid('load', {
        fromDate: $('input[name="fromDate"]').val(),
        toDate: $('input[name="toDate"]').val()
    });
}