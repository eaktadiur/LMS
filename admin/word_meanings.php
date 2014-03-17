<?php
include './word_meaning_dal.php';
$dal = new wordMeaning();

$userName = $dal->get('userName');
$dal->CheckUserPermission("$userName");

include '../body/header.php';


$searchId = $dal->getParam("searchId");
$WordId = $dal->getParam('WordId');
$mode = $dal->getParam('mode');


if ($mode == 'delete') {
    $dal->delete($searchId);
    echo "<script>location.replace('word_meanings.php?mode=&WordId=$WordId');</script>";
} elseif ($mode == '') {
    $objWordList = $dal->getList($WordId);
}

$result = $dal->getWordNameById($WordId);
$word = $result->fetch_object();
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
                        url: 'word_meaning_save.php',
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
                    wordId = getParam("WordId"),
                    word = getParam('word');

            $.ajax({
                url: 'add_word_meaning.php?mode=' + mode + '&searchId=' + searchId + '&wordId=' + wordId + '&word=' + word,
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
                    word = getParam('word');
            $.ajax({
                url: 'word_meanings_view.php?mode=' + mode + '&searchId=' + searchId + '&word=' + word,
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

<div id="dialog-form" title="Add/Edit Word"></div>

<div style="font-size: 12pt; margin: 15px 5px;">Word : <b><?php echo $word->Word; ?></b></div>

<button class=" add button" WordId="<?php echo $WordId; ?>" searchId="" mode="new">Add New</button>
<a class="button" href="word.php">Back To Word List</a>

<div class="panel-header">Word Meaning List</div>
<table class="ui-state-default">
    <thead>
        <tr>
            <th field="1">S/N</th>
            <th field="2">Meaning Eng</th>
            <th field="3">Meaning Bang</th>
            <th field="4">Parts Of Speech</th>
            <th field="5">Meaning Is Correct Eng</th>
            <th field="6">Meaning Is Correct Bang</th>
            <th field="7" width="300">Action</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $objWordList->fetch_object()) { ?>
            <tr>
                <td><?php echo++$sl; ?></td>
                <td><?php echo stripcslashes($row->MeaningEng); ?></td>
                <td><?php echo stripcslashes($row->MeaningBg); ?></td>
                <td><?php echo partsSpeech($row->PartsOfSpeech); ?></td>
                <td><?php echo $row->EngMeaningIsCorrect; ?></td>
                <td><?php echo $row->BgMeaningIsCorrect; ?></td>
                <td>
                    <a class="view" searchId="<?php echo $row->MeaningId ?>" word="<?php echo $Word; ?>" WordId="<?php echo $WordId; ?>" mode="view" href="">view</a> | 
                    <a class="edit" searchId="<?php echo $row->MeaningId ?>" word="<?php echo $Word; ?>" WordId="<?php echo $WordId; ?>" mode="edit" href="">Edit</a> | 
                    <?php deleteIcon("?mode=delete&word=$Word&WordId=$WordId&searchId=$row->MeaningId"); ?> |
                    <a href="#">Add Image</a> | 
                    <a href="meanings_sentence.php?mode=&wordId=<?php echo $WordId; ?>&meaning=<?php echo stripcslashes($row->Word); ?>&meaningId=<?php echo $row->MeaningId ?>" target="_blank">Add Sentence</a>
                </td>
            </tr>

            <?php
        }
        $objWordList->close();
        ?>

    </tbody>
</table>

<?php include '../body/footer.php'; ?>

