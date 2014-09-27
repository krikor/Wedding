<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebGallery.aspx.cs" Inherits="WeddingWeb.WebGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

#vlightbox1 .vlightbox1 {
	display:-moz-inline-stack;
	display:inline-block;
	zoom:1;
	*display:inline;
	position:relative;
	vertical-align:top;
	margin:3px;
	width:160px;
	font-family:Trebuchet,Tahoma,Arial,sans-serif;
	font-size:11px;
	font-weight:normal;
	text-decoration:none;
	text-align:center;
	opacity:0.87;
	outline:none;
}
.vlb{display:none;}
        .style14
        {
            font-family: "French Script MT";
            font-size: 50pt;
            margin-top: 0px;
        }
        .style15
        {
            font-family: "French Script MT";
            font-size: 50pt;
            margin-top: 0px;
            text-align: center;
        }
        .style16
        {
            font-family: "French Script MT";
            font-size: xx-large;
            margin-top: 0px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style14">
        Thank you for celebrating our wedding with us!</p>
    <br />
    <br />
    <p class=style16>View and download any of our high-def pictures on the link below</p>
    <br />
    <p class=style15><iframe src="https://onedrive.live.com/embed?cid=3DFCB6028516752A&resid=3DFCB6028516752A%218227&authkey=AOi603YJtLG8W_c" width="165" height="128" frameborder="0" scrolling="no"></iframe> <iframe src="https://onedrive.live.com/embed?cid=3DFCB6028516752A&resid=3DFCB6028516752A%218439&authkey=AEk9yv6Q5sTikK4" width="165" height="128" frameborder="0" scrolling="no"></iframe></p>
    <p class=style16>Enjoy,</p>
    <p class=style16>Alexis &amp; Krikor</p>
    <br />
</asp:Content>
