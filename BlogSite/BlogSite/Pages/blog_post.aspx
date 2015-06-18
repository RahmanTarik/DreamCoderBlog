<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="blog_post.aspx.cs" Inherits="BlogSite.Pages.BlogPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">
        <div id="tooplate_content">
            <asp:Button ID="publishButton" runat="server" Text="Publish" class="button float_r" OnClick="publishButton_Click"/>
            <div id="fullpost">
                <img runat="server" id="img" src="../images/user/0.jpg" class="image_wrapper image_fl" alt="Image" />
                <p><span>Posted <a runat="server" id="name" href='#'></a></span>| <a runat="server" id="dateOfPost" href='#'></a>| <span>Viewed <a runat="server" id="hitCount" href='#'>0</a></span> | <span><a runat="server" id="totalComments" href='#'>0</a> Comments</span></p>
                <h2 runat="server" id="Posttitle"></h2>
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
                        <label class="">Comment (* required )</label><br />
                        <input class="input" runat="server" type="text" name="commentTextBox" id="commentTextBox" placeholder="Write your comment ....." />
                    </div>
                    <asp:Button ID="commentButton" runat="server" Text="Comment" class="button" OnClick="commentButton_Click" />
                    <div class="cleaner h40"></div>
                </div>
            </div>
            <!-- end of content -->
        </div>
        <div class="cleaner"></div>
    </div>
    <!-- end of tooplate_main -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
