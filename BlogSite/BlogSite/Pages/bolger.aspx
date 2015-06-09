<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="bolger.aspx.cs" Inherits="BlogSite.Pages.bolger" validateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_editor.css" rel="stylesheet" />
    <link href="../froala_editor_1.2.7/css/froala_style.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../froala_editor_1.2.7/js/froala_editor.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/tables.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/lists.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/colors.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/media_manager.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_family.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/font_size.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/block_styles.min.js"></script>
    <script src="../froala_editor_1.2.7/js/plugins/video.min.js"></script>

    <script>
        $(function () {
            $('#edit').editable({ inlineMode: false, height: 300, alwaysBlank: true })
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">


    <div id="tooplate_main">

        <div id="tooplate_content">

            <div class="cleaner h5"></div>
            <div>
                <div id="Blogging Page">
                    <h3>WelCome To Dream Coder's Blog</h3>
                    <p><em>As a sector, ICT is growing rapidly and creating about 120,000 new jobs each year. But due to differences in demands and skills, and despite high unemployment - especially among the young – Europe could face a shortage of up to 900,000 skilled ICT workers by 2020. <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>ICT</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>shortage</strong></a>.</em></p>


                    <h3>Add Your Post</h3>
                    <label for="PostTitle">Post Title:</label>
                    <input type="text" class="" name="PostTitle" id="postTitle" />
                    <div class="cleaner h10">

                        <label for="text">
                            <br />
                            Details :<br />
                            <textarea id="edit" name="edit" rows="0" cols="0" class="required" aria-expanded="true"></textarea><br />

                            <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />
                            <asp:Button ID="publishButton" runat="server" Text="Publish" OnClick="publishButton_Click" />


                        </label>
                    </div>

                </div>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
