<?php
include './word_dal.php';
$dal = new word();
$userName = $dal->get('userName');
$dal->CheckUserPermission("$userName");

include '../body/header.php';






$perpage = 500;
$page = $dal->getParam('page');
$page = $page == '' ? 0 : $page;
$start = $page * $perpage;
$end = $start + $perpage;




$searchId = $dal->getParam("searchId");
$mode = $dal->getParam('mode');
$search = $dal->getParam('search');
$search = $search == '' ? 'a' : $search;


$link = "?search=$search";
if ($mode == 'delete') {
    $dal->delete($searchId);
}

$objWordList = $dal->getList($search, $start, $end);
$totalRow = $dal->getcount($search);
?>



<script type="text/javascript">
    

    function viewDialog() {
        $("#dialog-form").dialog({
            autoOpen: false,
            height: 300,
            width: 400,
            modal: true,
            buttons: {
                Cancel: function() {
                    $(this).dialog("close");
                    location.reload(true);
                }
            },
            close: function() {
                location.reload(true);
            }
        });
    }

    function addDialog() {

        $("#dialog-form").dialog({
            autoOpen: false,
            height: 300,
            width: 450,
            modal: true,
            buttons: {
                "Create": function() {
                    //$("#frm").validate();

                    $('#frm').form('submit', {
                        url: 'word_save.php',
                        success: function(data) {

                            var result = JSON.parse(data);
                            if (result.success) {
                                $(".datagrid-btable tbody").append("<tr>" +
                                        "<td></td>" +
                                        "<td>" + $('#WordId').val() + "</td>" +
                                        "<td>" + $('#WordId').val() + "</td>" +
                                        "<td>" + $('#WordId').val() + "</td>" +
                                        "<td>" + $('#WordId').val() + "</td>" +
                                        "<td>" + $('#WordId').val() + "</td>" +
                                        "<td></td>" +
                                        "</tr>");

                            }
                            $("#frm").trigger("reset");
                            //location.reload(true);
                        }
                    });
                },
                Cancel: function() {
                    $(this).dialog("close");
                    location.reload(true);
                }
            },
            close: function() {
                location.reload(true);
            }
        });
    }

    $(function() {

        $('ul.top_menu li:nth-child(1) a').css('background', 'transparent none');


        $('.edit, .add').click(function(e) {
            e.preventDefault();
            $('#loder').show();
            var searchId = $(this).attr('searchId'),
                    mode = $(this).attr('mode');
            $.ajax({
                url: 'add_word.php?mode=' + mode + '&searchId=' + searchId,
                type: 'GET',
                //data: f, //send some unique piece of data like the ID to retrieve the corresponding user information
                success: function(data) {
                    //construct the data however, update the HTML of the popup div 
                    $('#dialog-form').html(data);
                    addDialog();
                    $('#dialog-form').dialog('open');
                    $('#frm').validate();
                }
            });
        });

        $('.view').click(function(e) {
            e.preventDefault();
            $('#loder').show();
            var searchId = $(this).attr('searchId'),
                    mode = $(this).attr('mode');
            $.ajax({
                url: 'word_view.php?mode=' + mode + '&searchId=' + searchId,
                type: 'GET',
                //data: f, //send some unique piece of data like the ID to retrieve the corresponding user information
                success: function(data) {
                    //construct the data however, update the HTML of the popup div 
                    $('#dialog-form').html(data);
                    viewDialog();
                    $('#dialog-form').dialog('open');
                }
            });
        });



    });



</script>

<div>
    <ul class="breadcrumb">
        <li>
            <a href="account.php">Home</a> <span class="divider">/</span>
        </li>
        <li>
            <a href="leads.php">Events Training</a>
        </li>
    </ul>
</div>

<div id="dialog-form" title="Add/Edit Word"></div>



<button class=" add button" searchId=""mode="new">Add New</button>

<div class="fc" style="padding: 10px 0px;">
    <?php
    foreach (range('A', 'Z') as $char) {
        echo "<a href='?page=$page&search=$char' class='alphabet'>$char</a>" . "\n";
    }
    ?>
</div>

<?php //Paging($link, $totalRow, $perpage); ?>
<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-user"></i> Events Training</h2>
        </div>
        <div class="box-content">
<?php //echo resultBlock($errors, $successes); ?>
<form name='leads' action="<?php echo $_SERVER['PHP_SELF'] ?>" method='post' id="leads">

<table id="table-excel" class="table table-striped table-bordered bootstrap-datatable">
    <thead>
        <tr>
            <th field="1">S/N</th>
            <th field="2">Word</th>
            <th field="3">Phonetic Bang</th>
            <th field="4">Phonetic Eng</th>
            <th width="100">Sound</th>
            <th field="6" align="center">Difficulty Level</th>
            <th width="400">Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        while ($row = $objWordList->fetch_object()) {
            $sound = str_replace('http://spectrumenglishcourse.com/sound/', '', "$row->Sound");
            $sound = substr($sound, 0, -4);
            ?>
            <tr>
                <td><?php echo++$sl; ?></td>
                <td><?php echo stripcslashes($row->Word); ?></td>
                <td><?php echo stripcslashes($row->Phonetic_bg); ?></td>
                <td><?php echo stripcslashes($row->Phonetic_eng); ?></td>
                <td><button type="button" sound="<?php echo $sound; ?>" class="" onclick="playSound($(this));">Play</button></td>
                <td align="center"><?php echo $row->DifficultyLevel; ?></td>
                <td>
                    <a class="view" searchId="<?php echo $row->WordId ?>" mode="view" href="#">view</a> | 
                    <a class="edit" searchId="<?php echo $row->WordId ?>" mode="edit" href="#">Edit</a> | 
                    <?php deleteIcon("?mode=delete&searchId=$row->WordId"); ?> | 
                    <a href="word_meanings.php?mode=&word=<?php echo stripcslashes($row->Word); ?>&WordId=<?php echo $row->WordId ?>" target="_blank">Add Meaning</a> | 
                    <a href="word_meanings_list_view.php?mode=list&word=<?php echo stripcslashes($row->Word); ?>&WordId=<?php echo $row->WordId ?>" target="_blank">View Meaning List</a>
                </td>
            </tr>

            <?php
        }
        $objWordList->close();
        ?>

    </tbody>
</table>
                <div class="form-actions">
                    <a class="btn btn-danger" href="javascript:void(0)" onclick="document.getElementById('leads').submit();">
                        <i class="icon-trash icon-white"></i> 
                        Delete
                    </a>
                    <a class="btn btn-primary" href="export-xls.php?ex=leads">
                        <i class="icon icon-white icon-xls"></i> 
                        Export to Excel
                    </a>
                </div>  
            </form>    
        </div>
    </div><!--/span-->

</div>	

<?php include '../body/footer.php'; ?>









