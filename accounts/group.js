
var url, objectName, objectId;
$(document).ready(function() {
    loadGrid();
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
        pageList: [10, 15, 25, 50,100],
        pageSize: 50,
        pagePosition: 'pos',
        idField: objectId,
        url: 'group_get.php',
        columns: [[
                {field: 'Name', title: 'Name'},
                {field: 'Group', title: 'Group'}
            ]]

    });
}


function AddNew() {

    $('#dlg').dialog('open').dialog('setTitle', 'Add New');
    $('#fm').form('clear');
    url = 'group_save.php?mode=new';
}
function Edit() {
    var row = $('#dataGrid').datagrid('getSelected');
    //alert(row.productid);
    if (row) {
        $('#dlg').dialog('open').dialog('setTitle', 'Edit');
        $('#fm').form('load', row);
        url = 'group_save.php?mode=""&search_id=' + row.GroupID;
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
                $.post('group_save.php?mode=delete',
                        {
                            search_id: row.GroupID
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







function editEmployeeInfo() {
    var row = $('#dataGrid').datagrid('getSelected');
    if (row) {
        location.replace('../employee_info/index.php?employeeId=' + row.EMPLOYEE_ID);
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