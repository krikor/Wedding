<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registry.aspx.cs" Inherits="WeddingWeb.Registry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

td
	{border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 0px;
            color:black;
	        font-size:11.0pt;
	        font-weight:400;
	        font-style:normal;
	        text-decoration:none;
	        font-family:Calibri, sans-serif;
	        text-align:general;
	        vertical-align:bottom;
	        white-space:nowrap;
	}
.font5
	{color:black;
	font-size:11.0pt;
	font-weight:700;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	}
.font0
	{color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:Calibri, sans-serif;
	}
        .style15
    {
        font-family: "French Script MT";
        font-size: 50pt;
    }
    .style16
    {
        font-size: large;
    }
    .style17
    {
        text-decoration: underline;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="style1">
        <span class="style15">We are registered are the following Stores:</span><br />
        <br />
        (Click 
        on logo to view our registries)<br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/Macys-Logo.jpg" 
            PostBackUrl="http://www1.macys.com/registry/wedding/guest/?registryId=2143494" 
            Width="438px" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/crate_and_barrel_logo_01.jpg" 
            PostBackUrl="http://www.crateandbarrel.com/Gift-Registry/Alexis-Cohen-and-Krikor-Nigoghosian-Jr/r5122973" 
            Width="438px" />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/Amazon-Logo.jpg" 
            PostBackUrl="http://www.amazon.com/registry/wedding/2PC3NG91LFE2H" 
            Width="438px" />
        <br />
        <br />
        <br />
        <span class="style17">Shipping Address (BEFORE Wedding):</span><br />
        <span class="style16">Krikor/Alexis Nigoghosian<br />
        4267 148th Avenue NE<br />
        Apt. G103<br />
        Bellevue, WA 98007<br />
        USA<br />
        </span>
        <br />
        <span class="style17">Shipping Address (AFTER Wedding):</span><br />
        <span class="style16">Krikor/Alexis Nigoghosian<br />
        <em>TBD</em><br />
        </span>
        <br />
        <br />
    </div>
</asp:Content>
