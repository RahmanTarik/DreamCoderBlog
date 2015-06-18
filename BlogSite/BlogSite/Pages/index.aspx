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

            <h2>Welcome To Dream Coder</h2>
            <div class="homeContainer">
                <div class="homeContent">

                    <img class="image_wrapper3" src="../images/aboutt.jpg" alt="image" />
                    <p>Dream Coder was formed at BASIS in april, 2015. The team was formed for broadcasting our knowledge and expose the potential. BITM gives us an oppurtunity to gather knowledge about object oriented programming using C# and Web development using asp.net</p>
                    <p>It’s hard to remember a world without blogs. Originally a sort of online journal full of mundane personal updates, web logs have morphed into an extremely powerful form of communication.</p>
                    <p>It shouldn’t be any surprise that the tech world embraced the blogosphere far before every newspaper in the country started making their writers blog alongside their standard news stories. As a result, there are blogs that are so great, so informative, so current — you’d be lost in your tech career without them. Here’s some we monitor daily. Add them to your bookmarks!</p>
                    <h3>Overview </h3>
                    <p>Introduction to Projects for Team Members is a one-day seminar that provides participants with the skills needed to effectively participate as part of a project team. Intended as an introduction to project management concepts for team members and support staff, the course combines discussion, demonstrations, and hands-on exercises to introduce and reinforce key concepts while providing information that can be immediately applied on the job.</p>
                    <h3>Objectives </h3>
                    <p>
                        The course focuses on practical results and real world explanations. The course goal is to introduce effective project team member skills. At the conclusion of the class, participants will:
                        <ul type="disc">
                            <li>Have been introduced to the Project Management concepts and language used to define, plan and manage projects</li>
                            <li>Be able to identify tasks as the elementary units of project work</li>
                            <li>Understand the importance of timely and accurate status reporting</li>
                            <li>Understand the concept of task dependencies and the implications of schedlie slippage</li>
                            <li>Be familiar with the fundamentals of time management for individuals and how this relates to project performance and reporting</li>
                        </ul>

                    </p>




                </div>

            </div>
        </div>
        <!-- end of tooplate_main -->
    </div>
    <div class="cleaner"></div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
