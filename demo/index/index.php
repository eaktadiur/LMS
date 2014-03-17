<?php
include '../lib/DbManager.php';
include_once '../body/header.php';
include_once '../body/footer.php';

die();
?>
<a href="../accounts/group_index.php">Group</a>
<a href="../accounts/ledger_index.php">Ledger</a>

<link rel="stylesheet" href="../public/windows8-animations-master/css/demo-styles.css" />
<script src="../public/js/jquery-1.7.2.js"></script>
<script src="../public/windows8-animations-master/js/modernizr-1.5.min.js"></script>
<script src="../public/windows8-animations-master/js/modernizr-1.5.min.js"></script>
<script src="../public/windows8-animations-master/js/prefixfree.min.js"></script>

<script type="text/javascript">
    function showDashBoard() {
        for (var i = 1; i <= 3; i++) {
            $('.col' + i).each(function() {
                $(this).addClass('fadeInForward-' + i).removeClass('fadeOutback');
            });
        }
    }

    function fadeDashBoard() {
        for (var i = 1; i <= 3; i++) {
            $('.col' + i).addClass('fadeOutback').removeClass('fadeInForward-' + i);
        }
    }

    $(document).ready(function() {

        $(".lock-thumb").click(function() {
            fadeDashBoard();
            $('.login-screen').addClass('slidePageInFromLeft').removeClass('slidePageBackLeft');
        });

        $('#unlock-button').click(function() {
            $('.login-screen').removeClass('slidePageInFromLeft').addClass('slidePageBackLeft');
            showDashBoard();
        });

        $('.big, .small').each(function() {
            var $this = $(this),
                    page = $this.data('page');
            $this.on('click', function() {
                $('.page.' + page).addClass('openpage');
                fadeDashBoard();
            })
        });

        $('.close-button').click(function() {
            $(this).parent().addClass('slidePageLeft')
                    .one('webkitAnimationEnd oanimationend msAnimationEnd animationend', function(e) {
                $(this).removeClass('slidePageLeft').removeClass('openpage');
            });
            showDashBoard();
        });
        $('.view-demo-button').click(function() {
            $(this).parent().addClass('slideDemoOverlayUp');
            showDashBoard();
        });
    });


</script>

<div class="demo-wrapper">
    <div class="page todos">
        <h2 class="page-title">My Todos</h2>
        <ul contenteditable>
            <li>Finish my 3D demo<span class="delete-button">x</span></li>
            <li>Design my blog<span class="delete-button">x</span></li>
            <li>Buy groceries<span class="delete-button">x</span></li>
            <li>Finish my todo app<span class="delete-button">x</span></li>
            <li>Organize my bookmarks<span class="delete-button">x</span></li>
        </ul>
        <div class="close-button">x</div>
    </div>

    <div class="page random-page">
        <h2 class="page-title">Some Awesome App!</h2>
        <div class="close-button">x</div>
    </div>

    <div class="dashboard clearfix">
        <div class="col1 clearfix">
            <div class="big todos-thumb" data-page="todos">
                <p>My Todos
                    <span class="todos-thumb-span">You have 5 more tasks to do!</span>
                </p>
            </div>
            <div class="small lock-thumb">
                <span class="icon-font  center" aria-hidden="true" data-icon="&#xe00d;"></span>
            </div>
            <div class="small last cpanel-thumb" data-page="random-page">
                <span class="icon-font" aria-hidden="true" data-icon="&#xe016;"></span>
            </div>
            <div class="big notes-thumb" data-page="random-page">
                <span class="icon-font" aria-hidden="true" data-icon="&#xe000;"></span>
                <p> Notes</p>
            </div>
            <div class="big calculator-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe017;"></span><p>Calculator</p></div>
        </div>
        <div class="col2 clearfix">
            <div class="big organizer-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe015;"></span><p>Contacts</p></div>
            <div class="big news-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe00f;"></span><p>News</p></div>
            <div class="small calendar-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe00a;"></span></div>
            <div class="small last paint-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe014;"></span></div>
            <div class="big weather-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe012;"></span><p> Weather</p></div>
        </div>
        <div class="col3 clearfix">      
            <div class="big photos-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe001;"></span><p> Photos</p></div>
            <div class="small alarm-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe009;"></span></div>
            <div class="small last favorites-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe018;"></span></div>
            <div class="big games-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe002;"></span><p>Games</p></div>
            <div class="small git-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe010;"></span></div>
            <div class="small last code-thumb" data-page="random-page"><span class="icon-font" aria-hidden="true" data-icon="&#xe011;"></span></div>
        </div>
    </div>
</div>




<?php include_once '../body/footer.php'; ?>