<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BlogSite.Pages.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../js/swfobject.js"></script>
    <script type="text/javascript">
        var flashvars = {};
        flashvars.xml_file = "photo_list.xml";
        var params = {};
        params.wmode = "transparent";
        var attributes = {};
        attributes.id = "slider";
        swfobject.embedSWF("flash_slider.swf", "flash_grid_slider", "900", "240", "9.0.0", false, flashvars, params, attributes);
    </script>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">
                <div id="tooplate_slider">
                    <div id="flash_grid_slider">
                        <a href="http://www.adobe.com/go/getflashplayer">
                            <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" />
                        </a>
                    </div>
				</div>
                
                <div id="tooplate_content">
                
                	<h2>Welcome To Pinky Flow Theme!</h2>
                    <div class="image_wrapper image_fl"><span></span><img src="../images/tooplate_image_01.jpg" alt="image" /></div>
                    <p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam metus eros, pulvinar eu elementum et, suscipit in est. Vivamus hendrerit tellus id sem rutrum in adipiscing tellus posuere. Maecenas suscipit dictum tempus.</em></p>	
                    <p>Pinky Flow is brought to you by <strong><span class="orange">too</span><span class="green">plate</span></strong>. Credit goes to <a rel="nofollow" href="http://www.photovaco.com">Free Photos</a> for photos.  Proin nec volutpat velit. Sed sagittis libero et augue fringilla vitae fringilla neque placerat. Nunc fermentum mi ut nisi tincidunt eget sollicitudin nibh ultrices. Integer neque dui, viverra eget sodales sed, eleifend at arcu. Etiam et enim sed sem tincidunt semper vel in metus.   Feugiat luctus malesuada non, aliquet et justo. Validate <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>XHTML</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>CSS</strong></a>.</p>
                    <div class="cleaner h40"></div>
<div class="col_allw280 fp_service_box">
                        <h4>pharetra id turpis<span>Lorem Ipsum Dolor</span></h4>
                        <p>Nam ornare dui id mi elementum pretium. Mauris lacus lorem, consectetur eu pellentesque non, fermentum placerat leo.</p>
                        <a href="#" class="more">more</a>
                    </div>
<div class="col_allw280 fp_service_box">
                        <h4>semper nisl ac nibh<span>Donec Tincidunt Varius</span></h4>
                        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum eu mauris id neque.</p>
                        <a href="#" class="more">more</a>
                    </div>
<div class="col_allw280 fp_service_box col_last">
                        <h4>consect adipiscing elit<span>Etiam Gravida Sagittis</span></h4>
                        <p>Cras eu egestas sem. Aenean mollis feugiat massa, eget pharetra nunc interdum non. Etiam euismod sem ac sem tincidunt adipiscin.</p>
                        <a href="#" class="more">more</a>
                    </div>
                
                	<div class="cleaner"></div>
                </div>
				
                <div class="cleaner"></div>
            </div> <!-- end of tooplate_main -->
            
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
