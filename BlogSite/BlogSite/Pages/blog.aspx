<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="blog.aspx.cs" Inherits="BlogSite.Pages.blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="tooplate_main">

        <div id="tooplate_content">
            <div >
                <h2 class="blogTitle">Blog Posts</h2>
            </div>
            <div class="blogMenu">
                <div>
                    <asp:DropDownList class="dropDown" ID="postDropDown" runat="server" AutoPostBack="True">
                        <asp:ListItem Text="Most Recent Posts" Value="1" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Most Viewed Posts" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="searchDiv">
                    <asp:Button CssClass="searchButton" ID="searchButton" runat="server" Text="search" />
                    <input class="searchText" id="searchText" type="text" runat="server" placeholder="Search" />
                </div>
            </div>

            <div class="h30"></div>
            <div runat="server" id="postDiv">
            </div>
        </div>

        <div class="cleaner"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
