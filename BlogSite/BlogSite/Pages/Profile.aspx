<%@ Page Title="" Language="C#" MasterPageFile="~/Master/blogSiteMaster.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BlogSite.Pages.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Container" runat="server">
    <div id="myProfile">
        <h1 class="aligin_center">Profile</h1>
        <div runat="server" class="post_box">
            <img runat="server" id="img" class="image_wrapper2" alt="Image" />
            <h3 runat="server" id="nameText" class="postHead"></h3>
            <label>Email :</label>
            <asp:Label ID="emailText" runat="server" Text=""></asp:Label><br />
            <label>About :</label>
            <asp:Label ID="aboutText" runat="server" Text=""></asp:Label><br />
            <div class="cleaner"></div>
        </div>
        <h3> My Post</h3>
        <div class="dropDownContainer">
            <asp:DropDownList class="dropDown" ID="postDropDown" runat="server" AutoPostBack="True">
                <asp:ListItem Text="Published Posts" Value="1" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Unpublished Posts" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div runat="server" id="postDiv">
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
