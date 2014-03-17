<?php
include './word_meaning_dal.php';
$dal = new wordMeaning();

include '../body/header.php';


$searchId = $dal->getParam("searchId");
$WordId = $dal->getParam('WordId');
$Word = $_GET['word'];
$mode = $dal->getParam('mode');




$objWordList = $dal->getList($WordId);
?>


<div class="easyui-layout" style="margin: auto; height:600px;">  
    <div title="Word Meaning List" data-options="region:'center'" style="background-color:white; padding: 2px 2px;"> 

        <div style="font-size: 12pt; margin: 15px 5px;">Word : <b><?php echo stripcslashes($Word); ?></b></div>
        <a class="button" href="word.php">Back To Word List</a>
        <table class="ui-state-default">
            <thead>
                <tr>
                    <th field="1">S/N</th>
                    <th field="2">Meaning Eng</th>
                    <th field="3">Meaning Bang</th>
                    <th field="4">Parts Of Speech</th>
                    <th field="5">Meaning Is Correct Eng</th>
                    <th field="6">Meaning Is Correct Bang</th>
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
                    </tr>

                    <?php
                }
                $objWordList->close();
                ?>

            </tbody>
        </table>

    </div>
</div>
<?php include '../body/footer.php'; ?>

