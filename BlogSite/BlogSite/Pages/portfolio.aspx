<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="BlogSite.Pages.portfolio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
    <link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
    <!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
    <!--////// END  \\\\\\\-->

    <!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/piroBox.1_2.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $().piroBox({
                my_speed: 600, //animation speed
                bg_alpha: 0.5, //background opacity
                radius: 4, //caption rounded corner
                scrollImage: false, // true == image follows the page, false == image remains in the same open position
                pirobox_next: 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
                pirobox_prev: 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
                close_all: '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
                slideShow: 'slideshow', // just delete slideshow between '' if you don't want it.
                slideSpeed: 4 //slideshow duration in seconds(3 to 6 Recommended)
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">

        <div id="tooplate_content">

            <h2>Portfolio</h2>
            <p><em>Curabitur volutpat sapien in dolor egestas ut lobortis mauris pretium. Maecenas fermentum, tellus in pulvinar posuere, urna elit blandit lectus, a condimentum erat augue et justo. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</em></p>
            <div class="h30"></div>

            <div id="gallery">
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_01_l.jpg" title="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">
                        <img src="images/gallery/image_01_s.jpg" alt="Image 01" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_02_l.jpg" title="Feugiat luctus malesuada non, aliquet et justo.">
                        <img src="images/gallery/image_02_s.jpg" alt="Image 02" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_03_l.jpg" title="Vivamus est augue, volutpat placerat tempus a, quis mi.">
                        <img src="images/gallery/image_03_s.jpg" alt="Image 03" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box gb_lmb">
                    <a class="pirobox" href="images/gallery/image_04_l.jpg" title="Vivamus lacus magna, gravida sit amet accumsan.">
                        <img src="images/gallery/image_04_s.jpg" alt="Image 04" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_05_l.jpg" title="Nulla enim elit, euismod sit amet varius sed, dapibus id dui.">
                        <img src="images/gallery/image_05_s.jpg" alt="Image 05" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_06_l.jpg" title="Duis viverra ligula et dolor pellentesque tincidunt.">
                        <img src="images/gallery/image_06_s.jpg" alt="Image 06" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box">
                    <a class="pirobox" href="images/gallery/image_07_l.jpg" title="Pellentesque quis tristique eget, bibendum elit.">
                        <img src="images/gallery/image_07_s.jpg" alt="Image 07" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
                <div class="gallery_box gb_lmb">
                    <a class="pirobox" href="images/gallery/image_08_l.jpg" title="Curabitur rhoncus dapibus ipsum euismod adipiscing elit.">
                        <img src="images/gallery/image_08_s.jpg" alt="Image 08" class="image_wrapper" /></a>
                    <div class="gl_box">
                        <a href="#" class="more float_l">Visit</a>
                        <a href="#" class="more float_r">Detail</a>
                        <div class="cleaner"></div>
                    </div>
                    <div class="cleaner"></div>
                </div>
            </div>

            <div class="cleaner"></div>
        </div>
    </div>
    <!-- end of tooplate_main -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
