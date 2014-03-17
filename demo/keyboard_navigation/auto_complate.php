<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <script type="text/javascript" src="../../public/js/jQuery-v1.7.2.js"></script>



        <style type="text/css">
            body{background-color:#34495e;}
            ul
            {
                list-style: none;
                margin: 0;
                padding: 0;
            }
            .selected
            {
                background: #3498DB;
                padding-bottom: 8px;
                color: #fff;
            }
            #quickSearchDiv
            {
                background-color: #fff;
                list-style: none;
                margin: 0;
                padding: 0;
                width: 250px;
                display:none; 
                margin-top:1px; 
                border: 1px solid #CCC; 
                min-height:0px;
                text-align:left;
                z-index:999;
                position: relative;
            }
            #quickSearchDiv ul li
            {
                font-family: "Open Sans", "Helvetica Neue", Helvetica, sans-serif;
                margin: 0;
                padding: 0;
                font-variant: normal;
                color: #000;
            }
            #quickSearchDiv ul li a
            {
                font-size: 11px;
                border-bottom: 1px solid #F7F7F7;
                color: #000;
                display: block;
                margin: 0;
                padding: 5px 8px;
                text-decoration: none;
                min-height: 20px;
            }
            #quickSearchDiv ul li a:hover
            {
                background: #1b9bff;
                padding-bottom: 8px;
                color: #fff;
            }
            #quickSearchDiv ul li.selected a { color: #fff; }
            #autocomplete
            {
                width: 250px;
                height:25px;
                padding-left:2px;
                padding-right:2px;
                background-color: #34495e;
                color: #fff;
                line-height: 100%;
                font-size: 14px;
                font-family: Tahoma, Geneva, sans-serif;
                border:1px solid #223444;
                font-variant: small-caps;
                -webkit-appearance: none;
                -webkit-box-sizing: content-box;
                outline:none;
                padding-top:3px;
            }
            input[type="search"]::-webkit-search-decoration,
            input[type="search"]::-webkit-search-cancel-button,
            input[type="search"]::-webkit-search-results-button,
            input[type="search"]::-webkit-search-results-decoration 
            {
                display: none;
            }





            * { padding: 0; margin: 0; list-style: none; font-family: Arial }

            .youtubeOynat { display: none; background: #ddd; padding: 10px }
            .youtube {
                border: 1px solid #ddd;
                padding: 10px;
                margin: 10px;
                overflow: hidden
            }
            .youtube img {
                float: left;
                margin-right: 15px
            }
            .youtube a {
                text-decoration: none;
                color: darkred
            }
            .youtube p {
                padding-top: 10px
            }

            .arama {
                padding: 10px
            }
            .arama h2 {
                font-weight: normal;
                padding-bottom: 10px
            }

            .hata {
                margin: 10px;
                background-color: darkred;
                color: #fff;
                font-size: 12px;
                padding: 5px
            }
        </style>

    </head>

    <body>
        <div id="quickSearchContainer" style="float:left; width: 300px;">
            <input type="search" id="autocomplete">
            <div id="quickSearchDiv">
                <ul id="quickSearch"></ul>	
            </div>
        </div>
        <div  id="selection" style="display:none; color: #fff; float:left;">
            Selected : <span id="text"></span>
        </div>
        <br/><br/><br/><br/>


        <div class="arama">
            <form action="" onsubmit="return false">
                <h2>Youtube API jQuery AutoComplete</h2>
                <div class="ui-widget">
                    <label for="youtube">Youtube Arama: </label>
                    <input id="youtube" />
                    <button id="submit">ARA</button>
                </div>
            </form>
        </div>

        <div id="sonuc"></div>


    </body>
</html>




<script type="text/javascript">

                $(document).ready(function() {

                    var delay = (function() {
                        var timer = 0;
                        return function(callback, ms) {
                            clearTimeout(timer);
                            timer = setTimeout(callback, ms);
                        };
                    })();
                    var xml = "<menuitems> <menu data='RUSSIA'/> <menu data='ENGLAND'/> <menu data='USA'/> <menu data='INDIA'/> </menuitems>",
                            xmlMenu = $.parseXML(xml);

                    $("#autocomplete").bind('keyup focus', function(e) {
                        //return if up/down/return key
                        if (e.keyCode == 40 || e.keyCode == 38 || e.keyCode == 13) {
                            e.preventDefault();
                            return;
                        }
                        delay(function() {
                            $("#quickSearch").empty();
                            $("#quickSearchDiv").show();
                            //non-case-sensitive search item
                            var regex = new RegExp($("#autocomplete").val(), "i");
                            var i = 0;
                            $(xmlMenu).find('menu').filter(function() {
                                return $(this).attr('data').match(regex);
                            }).each(function() {
                                i++;
                                if (i > 5)
                                    return false;

                                type = "";
                                $("#quickSearch").append("<li><a tabindex='-1' href='javascript:void(0);' onclick=dispSelection('" + $(this).attr("data") + "')>" + $(this).attr("data") + "</a></li>");
                            });
                            //add class to the first<li>
                            $("#quickSearch li:first").addClass('selected');

                        }, 750);
                    });

                    // keypress on the search textbox
                    $("#autocomplete").keydown(function(e) {
                        var selected = $("#quickSearch .selected");
                        if (e.keyCode == 13) { // on select
                            e.preventDefault();
                            if ($("#quickSearch li").length > 0) {
                                dispSelection(selected.find('a').html());
                            }
                        }
                        if (e.keyCode == 38) { // up
                            $("#quickSearch .selected").removeClass("selected");
                            if (selected.prev().length == 0) {
                                $("#quickSearch li:last").addClass("selected");
                            } else {
                                selected.prev().addClass("selected");
                            }
                        }
                        if (e.keyCode == 40) { // down
                            var selected = $("#quickSearch .selected");
                            $("#quickSearch .selected").removeClass("selected");
                            if (selected.next().length == 0) {
                                $("#quickSearch li:first").addClass("selected");
                            } else {
                                selected.next().addClass("selected");
                            }
                        }
                    });
                    $("#autocomplete").focusout(function() {
                        if (autocText != $("#autocomplete").val())
                        {
                            document.getElementById("autocomplete").value = "";
                            document.getElementById("selection").style.display = "none";
                            autocText = "";
                        }
                    });
                    $("body").click(function() {
                        $("#quickSearchDiv").hide();
                    });
                    $("#quickSearchContainer").click(function(event) {
                        event.stopPropagation();
                    });
                });
                autocText = null;
                function dispSelection(text)
                {
                    $("#quickSearchDiv").hide();
                    document.getElementById("selection").style.display = "block";
                    document.getElementById("text").innerHTML = text;
                    document.getElementById("autocomplete").value = text;
                    autocText = text;
                }
                $(document).ready(function() {
                    //$("#autocomplete").focus();

                });






                /* AutoComplete */
                $("#youtube").autocomplete({
                    source: function(request, response) {
                        /* google geliştirici kimliği (zorunlu değil) */
                        var apiKey = 'AI39si7ZLU83bKtKd4MrdzqcjTVI3DK9FvwJR6a4kB_SW_Dbuskit-mEYqskkSsFLxN5DiG1OBzdHzYfW0zXWjxirQKyxJfdkg';
                        /* aranacak kelime */
                        var query = request.term;
                        /* youtube sorgusu */
                        $.ajax({
                            url: "http://suggestqueries.google.com/complete/search?hl=en&ds=yt&client=youtube&hjson=t&cp=1&q=" + query + "&key=" + apiKey + "&format=5&alt=json&callback=?",
                            dataType: 'jsonp',
                            success: function(data, textStatus, request) {
                                response($.map(data[1], function(item) {
                                    return {
                                        label: item[0],
                                        value: item[0]
                                    }
                                }));
                            }
                        });
                    },
                    /* seçilene işlem yapmak için burayı kullanabilirsin */
                    select: function(event, ui) {
                        $.youtubeAPI(ui.item.label);
                    }
                });

                /* Butona Basınca Arama */
                $('button#submit').click(function() {
                    var value = $('input#youtube').val();
                    $.youtubeAPI(value);
                });

                /* Youtube Arama Fonksiyonu */
                $.youtubeAPI = function(kelime) {
                    var sonuc = $('#sonuc');
                    sonuc.html('Arama gerçekleştiriliyor...');
                    $.ajax({
                        type: 'GET',
                        url: 'http://gdata.youtube.com/feeds/api/videos?q=' + kelime + '&max-results=15&v=2&alt=jsonc',
                        dataType: 'jsonp',
                        success: function(veri) {
                            if (veri.data.items) {
                                sonuc.empty();
                                $.each(veri.data.items, function(i, data) {
                                    sonuc.append('<div class="youtube">\
                        <img src="' + data.thumbnail.sqDefault + '" alt="" />\
                        <h3><a href="javascript:void(0)" onclick="$.youtubePlay(\'' + data.id + '\', \'' + data.content[5] + '\')">' + data.title + '</a></h3>\
                        <p>' + data.description + '</p>\
                    </div>\
                    <div class="youtubeOynat" id="' + data.id + '"></div>');
                                });
                            }
                            else {
                                sonuc.html('<div class="hata"><strong>' + kelime + '</strong> ile ilgili hiç video bulunamadı!</div>');
                            }
                        }
                    });
                }

                /* Youtube Video Oynatma Fonksiyonu */
                $.youtubePlay = function(yid, frame) {
                    $('.youtubeOynat').slideUp().empty();
                    $('#' + yid).slideDown().html('<iframe src="' + frame + '&autoplay=1" style="width: 100%; box-sizing: border-box; height: 300px" />');
                }



</script>



