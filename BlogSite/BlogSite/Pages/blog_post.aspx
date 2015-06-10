<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="blog_post.aspx.cs" Inherits="BlogSite.Pages.BlogPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">
        <div id="tooplate_content">
            <div id="fullpost">
                <img runat="server" id="img" src="../images/user/0.jpg" class="image_wrapper image_fl" alt="Image" />
                <p><span>Posted <a runat="server" id="name" href='#'></a></span>| <a runat="server" id="dateOfPost" href='#'></a>| <span>Viewed <a runat="server" id="hitCount" href='#'>0</a></span> | <span><a runat="server" id="totalComments" href='#'>0</a> Comments</span></p>
                <h2 runat="server" id="Posttitle">Lorem ipsum dolor sit amet</h2>
                <div runat="server" id="postBody"></div>
                <div class="cleaner h30"></div>

                <h3>Comments</h3>

                <div id="comment_section">
                    <ol runat="server" id="commentInput" class="comments first_level">
                    </ol>
                </div>
                <!-- end of comment -->

                <div id="comment_form">
                    <h3>Leave your comment</h3>
                    <div runat="server" id="errorMessage"></div>
                    <div class="form_row">
                        <label>Comment (* required )</label><br />
                        <input runat="server" type="text" name="commentTextBox" id="commentTextBox" placeholder="Write your comment ....."/>
                    </div>
                    <asp:Button ID="commentButton" runat="server" Text="Comment" class="submit_btn" OnClick="commentButton_Click"/>
                    <div class="cleaner h40"></div>
                </div>
            </div>

            <!-- end of content -->
            <div id="sidebar">
                <h3>Categories</h3>
                <ul class="tmo_list">
                    <li><a href="index.html">Curabitur sed</a></li>
                    <li><a href="index.html">Praesent adipiscing</a></li>
                    <li><a href="index.html">Duis sed justo</a></li>
                    <li><a href="index.html">Mauris vulputate</a></li>
                    <li><a href="index.html">Nam auctor</a></li>
                    <li><a href="index.html">Aliquam quam</a></li>
                </ul>

                <div class="cleaner h30"></div>

                <h3>Archive</h3>
                <ul class="tmo_list">
                    <li><a href="index.html">November, 2048</a></li>
                    <li><a href="index.html">October, 2048</a></li>
                    <li><a href="index.html">September, 2048</a></li>
                    <li><a href="index.html">August, 2048</a></li>
                    <li><a href="index.html">July, 2048</a></li>
                    <li><a href="index.html">June, 2048</a></li>
                    <li><a href="index.html">May, 2048</a></li>
                    <li><a href="index.html">April, 2048</a></li>
                    <li><a href="index.html">March, 2048</a></li>
                </ul>
            </div>
            <!-- end of Side Bar -->
        </div>



        <div class="cleaner"></div>
    </div>
    <!-- end of tooplate_main -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
