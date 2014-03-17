
var url, objectName, objectId;
$(document).ready(function() {
    loadGrid();
    $('#GroupIDID').selectToAutocomplete();
});
function loadGrid() {
    objectName = $('#object_name').val();
    objectId = $('#object_id').val();
    $('#dataGrid').datagrid({
        //title: 'Category List',
        iconCls: 'icon-edit',
        pagination: 'true',
        toolbar: "#toolbar",
        rownumbers: 'true',
        singleSelect: true,
        pageList: [10, 15, 25, 50],
        pageSize: 15,
        pagePosition: 'pos',
        idField: objectId,
        url: 'customer_get.php',
        columns: [[
                {field: 'Name', title: 'Name'},
                {field: 'Code', title: 'Code'},
                {field: 'PresentAddress', title: 'Present Address'}
            ]]

    });
}



function AddNew() {
    $('#dlg').dialog('open').dialog('setTitle', 'Add New');
    $('#fm').form('clear');
    url = 'customer_save.php?mode=new';
}
function Edit() {
    var row = $('#dataGrid').datagrid('getSelected');
    //alert(row.LedgerID);
    if (row) {
        $('#dlg').dialog('open').dialog('setTitle', 'Edit');
        $('#fm').form('load', row);
        url = 'customer_save.php?mode=""&search_id=' + row.CustomerId;
    }
}
function Save() {
    //alert(22);
    $('#fm').form('submit', {
        url: url,
        onSubmit: function() {
            return $(this).form('validate');
        },
        success: function(result) {
            //alert(result);
            var result = eval('(' + result + ')');
            if (result.success) {
                $('#dlg').dialog('close'); // close the dialog
                $('#dataGrid').datagrid('reload'); // reload the user data
            } else {
                $.messager.show({
                    title: 'Error',
                    msg: result.msg
                });
            }
        }
    });
}

function Remove() {
    var row = $('#dataGrid').datagrid('getSelected');
    if (row) {
        $.messager.confirm('Confirm', 'Are you sure you want to remove this user?', function(r) {
            if (r) {
                $.post('customer_save.php?mode=delete',
                        {
                            search_id: row.CustomerId
                        },
                function(result) {
                    if (result.success) {
                        $('#dataGrid').datagrid('reload'); // reload the user data
                    } else {
                        $.messager.show({// show error message
                            title: 'Error',
                            msg: result.msg
                        });
                    }
                }, 'json');
            }
        });
    }
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