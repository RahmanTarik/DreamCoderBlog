<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="bolger.aspx.cs" Inherits="BlogSite.Pages.bolger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
     
   <div id="tooplate_main">

        <div id="tooplate_content">

            <div class="cleaner h5"></div>
            <div >
                <div id="Blogging Page">
                    <h3>WelCome To Dream Coder's Blog</h3>
            <p><em> As a sector, ICT is growing rapidly and creating about 120,000 new jobs each year. But due to differences in demands and skills, and despite high unemployment - especially among the young – Europe could face a shortage of up to 900,000 skilled ICT workers by 2020. <a href="http://validator.w3.org/check?uri=referer" rel="nofollow"><strong>ICT</strong></a> and <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="nofollow"><strong>shortage</strong></a>.</em></p>


                    <h3>Add Your Post</h3>

                    &nbsp;&nbsp;&nbsp;
                        <label for="Post Category">Post Category:</label>&nbsp;&nbsp;
                        <input type="text" id="postCategory" name="postCategory" class="required input_field" /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;

                        <label for="Post Title">Post Title&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</label>&nbsp;&nbsp;
                        <input type="text" class=" required input_field" name="Post Titel" id="postTitle" />
                        <div class="cleaner h10">

                            <label for="text">
                            <br />
                            Details:<br />
                        <textarea id="text" name="text" rows="0" cols="0" class="required" aria-expanded="true"></textarea><br />
                            <br />
                            <br />
                            <br />
                             <asp:Button ID="saveButton" runat="server" Height="32px" Text="Save" Width="108px" />
                           <asp:Button ID="publishButton" runat="server" Text="Publish" Width="104px" Height="34px" Style="margin-right: 0kpx; margin-top: 0px" />
                     
                   
                            </label>
                        </div>

                </div>

        </div>
    </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
