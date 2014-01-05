<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="WeddingWeb.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style2
        {
            font-family: "Edwardian Script ITC";
            font-size: 60pt;
        }
        .style3
        {
            margin-left: 40px;
        }
        .style4
        {
            font-size: xx-large;
        }
        .style5
        {
            font-family: "Edwardian Script ITC";
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="style1">
        <p class="style3">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/IMAGES/topCally2.png" />
        </p>
        <p class="style3">
            &nbsp;</p>
        <p class="style3">
            <span class="style2">Gallery</span></p>
        <p class="style3">
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" 
                ImageUrl="~/IMAGES/Pictures/IMG_1.JPG" onclick="ImageButton1_Click" />
            <br />
            <br />
            <asp:Button ID="PreviousButton" runat="server" BackColor="White" 
                BorderStyle="None" CssClass="style5" onclick="StartPauseButton_Click" 
                Text="Previous" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" 
                CssClass="style4" Font-Names="Edwardian Script ITC" onclick="Button1_Click" 
                Text="Next" />
            <br />
        </p>
        <p class="style3">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/IMAGES/bottomCally2.png" />
            <br />
            <br />
        </p>
    </div>
</asp:Content>
