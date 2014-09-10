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
            Width="438px" onclientclick="PreventMasking('http://www1.macys.com/registry/wedding/guest/?registryId=2143494')" />
        <br />
        <script type="text/javascript">
            function PreventMasking(urlPopup) 
            {
                /*if (parent.frames.length > 0) {
                    parent.location.href = self.document.location
                }*/
                window.open(urlPopup);
            }
</script>
        <asp:Image ID="Image3" runat="server" Height="16px" 
            ImageUrl="~/IMAGES/middleCally2.png" Width="95px" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/crate_and_barrel_logo_01.jpg"
            Width="438px" onclientclick="PreventMasking('http://www.crateandbarrel.com/Gift-Registry/Alexis-Cohen-and-Krikor-Nigoghosian-Jr/r5122973')" />
        <br />
        <br />
        <asp:Image ID="Image4" runat="server" Height="16px" 
            ImageUrl="~/IMAGES/middleCally2.png" Width="95px" />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/Amazon-Logo.jpg"
            Width="438px" onclientclick="PreventMasking('http://www.amazon.com/registry/wedding/2PC3NG91LFE2H')" />
        <br />
        <asp:Image ID="Image5" runat="server" Height="16px" 
            ImageUrl="~/IMAGES/middleCally2.png" Width="95px" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="128px" 
            ImageUrl="~/IMAGES/bed-bathfix.png"
            Width="438px" 
            onclientclick="PreventMasking('http://www.bedbathandbeyond.com/store/giftregistry/view_registry_guest.jsp?pwsToken=&amp;eventType=Wedding&amp;registryId=541204418&amp;pwsurl=')" />
        <br />
        <br />
        <span class="style16"><br />
        </span>
        <br />
        <span class="style17">Shipping Address (AFTER Wedding):</span><br />
        <span class="style16">Krikor/Alexis Nigoghosian<br />
        <em>2080 132nd Ave SE Apt. 806<br />
        Bellevue, WA 98005<br />
        USA</em><br />
        </span>
        <br />
        <br />
    </div>
</asp:Content>
