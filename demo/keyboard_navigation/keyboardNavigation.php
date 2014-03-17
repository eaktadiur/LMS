<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title></title>
        <script type="text/javascript" src="../../public/js/jQuery-v1.7.2.js"></script>



        <style type="text/css">
            body {
                background-color:#777;
            }
            #log {
                position:absolute;
                width:150px;
                height:63px;
                padding-top:10px;
                text-align:center;
                left:0;
                right:0;
                top:100px;
                margin:auto;
                background-color:#444;
                -webkit-border-radius: 7px;
                -moz-border-radius: 7px;
                border-radius: 7px;
                -moz-box-shadow: -1px 4px 11px #000000;
                -webkit-box-shadow: -1px 4px 11px #000000;
                box-shadow: -1px 4px 11px #000000;
                font: 40px Tahoma, Helvetica, Arial, Sans-Serif;
                font-weight:bold;
                color: #222;
                text-shadow: 0px 1px 2px #555;
            }
        </style>

    </head>

    <body>
        <table id="people">
            <caption>
                Use the arrow keys to navigate among the cells
            </caption>
            <thead>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Phone Number</th>
                <th>Location</th>
            </thead>
            <tbody>
                <tr>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                </tr>
                <tr>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                </tr>
                <tr>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                </tr>
                <tr>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                </tr>
                <tr>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                    <td><input /></td>
                </tr>
            </tbody>
        </table>

    </body>
</html>




<script type="text/javascript">
    (function($) {

        $.fn.enableCellNavigation = function() {

            var arrow = {
                left: 37,
                up: 38,
                right: 39,
                down: 40
            };

            // select all on focus
            // works for input elements, and will put focus into
            // adjacent input or textarea. once in a textarea,
            // however, it will not attempt to break out because
            // that just seems too messy imho.
            this.find('input').keydown(function(e) {

                // shortcut for key other than arrow keys
                if ($.inArray(e.which, [arrow.left, arrow.up, arrow.right, arrow.down]) < 0) {
                    return;
                }

                var input = e.target;
                var td = $(e.target).closest('td');
                var moveTo = null;

                switch (e.which) {

                    case arrow.left:
                        {
                            if (input.selectionStart == 0) {
                                moveTo = td.prev('td:has(input,textarea)');
                            }
                            break;
                        }
                    case arrow.right:
                        {
                            if (input.selectionEnd == input.value.length) {
                                moveTo = td.next('td:has(input,textarea)');
                            }
                            break;
                        }

                    case arrow.up:
                    case arrow.down:
                        {

                            var tr = td.closest('tr');
                            var pos = td[0].cellIndex;

                            var moveToRow = null;
                            if (e.which == arrow.down) {
                                moveToRow = tr.next('tr');
                            } else if (e.which == arrow.up) {
                                moveToRow = tr.prev('tr');
                            }

                            if (moveToRow.length) {
                                moveTo = $(moveToRow[0].cells[pos]);
                            }

                            break;
                        }

                }

                if (moveTo && moveTo.length) {

                    e.preventDefault();

                    moveTo.find('input,textarea').each(function(i, input) {
                        input.focus();
                        input.select();
                    });

                }

            });

        };

    })(jQuery);


// use the plugin
    $(function() {
        $('#people').enableCellNavigation();

        
    });




</script>



