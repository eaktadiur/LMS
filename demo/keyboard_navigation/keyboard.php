<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
    <head>
        <title></title>

        <script type="text/javascript" src="../../public/js/jQuery-v1.7.2.js"></script>

        <style type="text/css">
            html {
                background: #222;

                color: #444;
                font-family: 'PT Sans', sans-serif;
                font-size: 15px;
                -webkit-font-smoothing: antialiased;
            }

            h2 {
                position: absolute;
                margin: -200px 0 0;
                top: 50%;
                width: 100%;

                color: #444;
                text-align: center;
            }

            span {
                padding: 0 0 2px;
                border-bottom: 1px dotted #444;
                cursor: pointer;

                -webkit-transition: .5s;
                -moz-transition: .5s;
                -o-transition: .5s;
                -ms-transition: .5s;
                transition: .5s;
            }

            span:hover {
                color: #fd0;
            }

            .key-wrapper {
                position: absolute;
                top: 50%;
                left: 50%;
                margin: -90px -294px;
            }

            .row {text-align: center;}

            .key {
                margin: 3px 1px;
                width: 50px;
                height: 50px;
                border: 2px solid #333;
                border-radius: 5px;
                display: inline-block;

                line-height: 52px;
                text-align: center;
                text-transform: uppercase;

                -webkit-transition: .5s;
                -moz-transition: .5s;
                -o-transition: .5s;
                -ms-transition: .5s;
                transition: .5s;
            }

            .k32 {
                width: 346px;
            }

            .active {
                border: 2px solid #fd0;
                color: #fd0;

                -webkit-transition: 0s;
                -moz-transition: 0s;
                -o-transition: 0s;
                -ms-transition: 0s;
                transition: 0s;
            }
        </style>

    </head>

    <body>

        <h2>Click <span>here</span> before you get crazy with your keyboard.</h2>

        <div class="key-wrapper">
            <ul class="row">
                <li class="key k81">q</li>
                <li class="key k87">w</li>
                <li class="key k69">e</li>
                <li class="key k82">r</li>
                <li class="key k84">t</li>
                <li class="key k89">y</li>
                <li class="key k85">u</li>
                <li class="key k73">i</li>
                <li class="key k79">o</li>
                <li class="key k80">p</li>
            </ul>

            <ul class="row">
                <li class="key k65">a</li>
                <li class="key k83">s</li>
                <li class="key k68">d</li>
                <li class="key k70">f</li>
                <li class="key k71">g</li>
                <li class="key k72">h</li>
                <li class="key k74">j</li>
                <li class="key k75">k</li>
                <li class="key k76">l</li>
            </ul>

            <ul class="row">
                <li class="key k90">z</li>
                <li class="key k88">x</li>
                <li class="key k67">c</li>
                <li class="key k86">v</li>
                <li class="key k66">b</li>
                <li class="key k78">n</li>
                <li class="key k77">m</li>
                <li class="key k188">,</li>
            </ul>

            <ul class="row">
                <li class="key k32"></li>
            </ul>
        </div>
    </body>
</html>




<script type="text/javascript">



    $(window).keydown(function(e) {
        key = (e.keyCode) ? e.keyCode : e.which;
        $('.key.k' + key).addClass('active');
        console.log(key);
    });

    $(window).keyup(function(e) {
        key = (e.keyCode) ? e.keyCode : e.which;
        $('.key.k' + key).removeClass('active');
    });


</script>



