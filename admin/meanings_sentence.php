<?php
include './meaning_sentence_dal.php';
$dal = new meaningSentence();
include '../body/header.php';



$searchId = $dal->getParam("searchId");
$meaningId = $dal->getParam('meaningId');
$mode = $dal->getParam('mode');
$wordId=  $dal->getParam('wordId');


if ($mode == 'delete') {
    $dal->delete($searchId);
    echo "<script>location.replace('meanings_sentence.php?mode=&meaningId=$meaningId');</script>";
} elseif ($mode == '') {
    $objWordList = $dal->getList($meaningId);
}

$result = $dal->getMeaning($meaningId);
$meaning = $result->fetch_object();
$result->close();
?>

<script>

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

                    $('#frm').form('submit', {
                        url: 'meaning_sentence_save.php',
                        success: function(data) {
                            //alert(data);
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
        $('.edit, .add').click(function(e) {
            e.preventDefault();
            var searchId = $(this).attr('searchId'),
                    mode = $(this).attr('mode'),
                    meaningId = getParam("meaningId");

            $.ajax({
                url: 'add_meaning_sentence.php?mode=' + mode + '&searchId=' + searchId + '&meaningId=' + meaningId,
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
            var searchId = $(this).attr('searchId'),
                    mode = $(this).attr('mode'),
                    meaningId = getParam("meaningId");

            $.ajax({
                url: 'meanings_sentence_view.php?mode=' + mode + '&searchId=' + searchId + '&meaningId=' + meaningId,
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

<div id="dialog-form" title="Add/Edit Meaning Sentence"></div>

<div style="font-size: 12pt; margin: 5px 5px;">Word : <b><?php echo $meaning->Word; ?></b></div>
<div style="font-size: 12pt; margin: 15px 5px;">Meaning Eng : <b><?php echo $meaning->MeaningEng; ?></b></div>


<button class=" add button" meaningId="<?php echo $meaningId; ?>" searchId="" mode="new">Add New</button>
<a class="button" href="word_meanings.php?WordId=<?php echo $wordId; ?>">Back To Word Meaning List</a>

<div class="panel-header">Meaning Sentence List</div>
<table class="ui-state-default">
    <thead>
        <tr>
            <th field="1">S/N</th>
            <th field="2">Sentence</th>
            <th field="3">Correct</th>
            <th field="7" width="200">Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        if ($objWordList) {
            while ($row = $objWordList->fetch_object()) {
                ?>
                <tr>
                    <td><?php echo++$sl; ?></td>
                    <td><?php echo stripcslashes($row->Sentence); ?></td>
                    <td><?php echo $row->IsCorrect; ?></td>
                    <td>
                        <a class="view" searchId="<?php echo $row->SentenceId ?>" meaningId="<?php echo $meaningId; ?>" mode="view" href="">view</a> | 
                        <a class="edit" searchId="<?php echo $row->SentenceId ?>" meaningId="<?php echo $meaningId; ?>" mode="edit" href="">Edit</a> | 
                        <?php deleteIcon("?mode=delete&meaningId=$meaningId&searchId=$row->SentenceId"); ?> |
                    </td>
                </tr>

                <?php
            }
            $objWordList->close();
        }
        ?>

    </tbody>
</table>

<?php include '../body/footer.php'; ?>

