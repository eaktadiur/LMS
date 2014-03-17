<?php
include '../lib/DbManager.php';
include '../body/header.php';
?>

<script type="text/javascript">
    $(document).ready(function() {
        $('.add-button').click(function() {
            $(this).closest('tr').after('<tr><td><input type="text"/><td colspan="3"><input type="text"/></td></tr>');
            return false;
        });
    });
</script>

<style type="text/css">
    td{padding:2px 5px;border:1px solid #ccc;}
</style>

<table class="table">
    <tr>
        <td>data</td>
        <td>other data</td>
        <td>even more data</td>
        <td><input type="button" value="add" class="add-button" /></td>
    </tr>
    <tr>
        <td>data</td>
        <td>other data</td>
        <td>even more data</td>
        <td><input type="button" value="add" class="add-button" /></td>
    </tr>
    <tr>
        <td>data</td>
        <td>other data</td>
        <td>even more data</td>
        <td><input type="button" value="add" class="add-button" /></td>
    </tr>
    <tr>
        <td>data</td>
        <td>other data</td>
        <td>even more data</td>
        <td><input type="button" value="add" class="add-button" /></td>
    </tr>
</table>
