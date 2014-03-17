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
        <div id="log">Key</div>

        <h1>Keys Pressed</h1>
        <textarea id="console" rows="10" cols="140" placeholder="Press a key" readonly="readonly"></textarea>
    </body>
</html>




<script type="text/javascript">
    var log = document.getElementById('log');
    window.addEventListener('keydown', function(event) {
        switch (event.keyCode) {
            case 37:
                console.log('Left');
                log.innerHTML = 'Left';
                break;

            case 38: // Up
                console.log('Up');
                log.innerHTML = 'Up';
                break;

            case 39:
                console.log('Right');
                log.innerHTML = 'Right';
                break;

            case 40:
                console.log('Down');
                log.innerHTML = 'Down';
                break;
            default:
                console.log(event.keyCode);
                log.innerHTML = String.fromCharCode(event.keyCode);
        }
    }, false);



    document.onkeyup = function(e) {
        document.getElementById("console").value += e.keyCode + "\n";
    };


</script>



