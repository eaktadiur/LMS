$(document).ready(function() {
    //themes, change CSS with JS
    //default theme(CSS) is cerulean, change it if needed
    /*var current_theme = $.cookie('current_theme')==null ? 'redy' :$.cookie('current_theme');
     switch_theme(current_theme);
     
     $('#themes a[data-value="'+current_theme+'"]').find('i').addClass('icon-ok');*/
    $('.fancybox').fancybox();
    $('.datatable').filterable();
//    $("input,select,textarea").not("[type=submit]").jqBootstrapValidation();

    $('.chosen-select').chosen();
    $('.autoComplate').selectToAutocomplete();



    $('#error a, #success a').click(function(e) {
        e.preventDefault();
        $("#error").slideUp('slow');
    })
    $('#success a').click(function(e) {
        e.preventDefault();
        $("#success").slideUp('slow');
    })
    $('#themes a').click(function(e) {
        e.preventDefault();
        current_theme = $(this).attr('data-value');
        $.cookie('current_theme', current_theme, {expires: 365});
        switch_theme(current_theme);
        $('#themes i').removeClass('icon-ok');
        $(this).find('i').addClass('icon-ok');
    });

    function showHide(div) {
        if (document.getElementById(div).style.display = 'block') {
            document.getElementById(div).style.display = 'none';
        } else {
            document.getElementById(div).style.display = 'block';
        }
    }
    function switch_theme(theme_name)
    {
        $('#bs-css').attr('href', 'css/bootstrap-' + theme_name + '.css');
    }

    //ajax menu checkbox
    $('#is-ajax').click(function(e) {
        $.cookie('is-ajax', $(this).prop('checked'), {expires: 365});
    });
    $('#is-ajax').prop('checked', $.cookie('is-ajax') === 'true' ? true : false);

    //disbaling some functions for Internet Explorer
    if ($.browser.msie)
    {
        $('#is-ajax').prop('checked', false);
        $('#for-is-ajax').hide();
        $('#toggle-fullscreen').hide();
        $('.login-box').find('.input-large').removeClass('span10');

    }


    //highlight current / active link
    $('ul.main-menu li a').each(function() {
        if ($($(this))[0].href == String(window.location))
            $(this).parent().addClass('active');
    });

    //establish history variables
    var
            History = window.History, // Note: We are using a capital H instead of a lower h
            State = History.getState(),
            $log = $('#log');

    //bind to State Change
    History.Adapter.bind(window, 'statechange', function() { // Note: We are using statechange instead of popstate
        var State = History.getState(); // Note: We are using History.getState() instead of event.state
        $.ajax({
            url: State.url,
            success: function(msg) {
                $('#content').html($(msg).find('#content').html());
                $('#loading').remove();
                $('#content').fadeIn();
                var newTitle = $(msg).filter('title').text();
                $('title').text(newTitle);
                docReady();
            }
        });
    });


    //animating menus on hover
    $('ul.main-menu li:not(.nav-header)').hover(function() {
        $(this).animate({'margin-left': '+=5'}, 300);
    },
            function() {
                $(this).animate({'margin-left': '-=5'}, 300);
            });

    //other things to do on document ready, seperated for ajax calls
    docReady();
});

function goBack() {
    window.history.go(-2);
}


function docReady() {
    //prevent # links from moving to top
    $('a[href="#"][data-top!=true]').click(function(e) {
        e.preventDefault();
    });

    //rich text editor
    $('.cleditor').cleditor();

    //datepicker
    //datepicker
    $('.datepicker').datepicker({
        dateFormat: 'yy-mm-dd',
        changeMonth: true,
        changeYear: true
    });

    //notifications
    $('.noty').click(function(e) {
        e.preventDefault();
        var options = $.parseJSON($(this).attr('data-noty-options'));
        noty(options);
    });


    //uniform - styler for checkbox, radio and file input
    $("input:checkbox, input:radio, input:file").not('[data-no-uniform="true"],#uniform-is-ajax').uniform();

    //tabs
    $('#myTab a:first').tab('show');
    $('#myTab a').click(function(e) {
        e.preventDefault();
        $(this).tab('show');
    });

    //makes elements soratble, elements that sort need to have id attribute to save the result
    $('.sortable').sortable({
        revert: true,
        cancel: '.btn,.box-content,.nav-header',
        update: function(event, ui) {
            //line below gives the ids of elements, you can make ajax call here to save it to the database
            //console.log($(this).sortable('toArray'));
        }
    });

    //slider
    $('.slider').slider({range: true, values: [10, 65]});

    //tooltip
    $('[rel="tooltip"],[data-rel="tooltip"]').tooltip({"placement": "bottom", delay: {show: 400, hide: 200}});

    //auto grow textarea
    $('textarea.autogrow').autogrow();

    //popover
    $('[rel="popover"],[data-rel="popover"]').popover();

    //file manager
    var elf = $('.file-manager').elfinder({
        url: 'misc/elfinder-connector/connector.php'  // connector URL (REQUIRED)
    }).elfinder('instance');

    //iOS / iPhone style toggle switch
    $('.iphone-toggle').iphoneStyle();

    //star rating
    $('.raty').raty({
        score: 4 //default stars
    });

    $('#showPerPageID').change(function() {
        var page = getParam('page');
        var perpage = $(this).val();
        location.href = '?showPerPage=' + perpage + '&page=' + page;
    });

    $('#attachment_tab .remove').click(function() {
        var r = confirm("Delete the selected record?");
        if (r == false)
        {
            return false;
        }
        var val = $(this).attr('id');
        $.ajax({
            type: "POST",
            url: 'ajax_remove_attach_by_id.php?val=' + val,
            success: function(data) {
            }
        });
        $(this).parent().parent().remove();
    });
}

function getParam(query) {

    var vars = [], hash;
    var q = document.URL.split('?')[1];
    if (q !== undefined) {
        q = q.split('&');
        for (var i = 0; i < q.length; i++) {
            hash = q[i].split('=');
            vars.push(hash[1]);
            vars[hash[0]] = hash[1];
        }
    }

    return vars[query];
}

function addFileMore() {
    var countTr = $('#attachment_tab tbody tr').length;
    var sl = countTr + 1;
    $('#attachment_tab tbody').append('<tr>\n\
            <td>' + sl + '.</td><td><input type="text" name="AttachmentDetails[]" class="required"/></td>\n\
            <td><input type="file" name="attachFile[]"></td>\n\
            <td><div class="remove float-right" onClick="$(this).parent().parent().remove();"><img src="../public/images/delete.png"/></div>\n\
            </td>\n\
        </tr>');
}


