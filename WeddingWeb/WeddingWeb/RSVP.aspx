<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RSVP.aspx.cs" Inherits="WeddingWeb.RSVP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: center;
            font-family: "Edwardian Script ITC";
            font-size: 70pt;
            margin:0;
            color: #333333;
            height: 134px;
        }
        .style9
        {
            font-family: "Edwardian Script ITC";
        }
        .style13
        {
            font-family: "Edwardian Script ITC";
            font-size: x-large;
        }
        .style14
        {
            font-size: x-large;
        }
        .style17
        {
            color: #FF0000;
            font-family: Arial;
            font-size: medium;
        }
        .style18
        {
            text-align: center;
            font-family: "Edwardian Script ITC";
            font-size: x-large;
        }
        .style19
        {
            text-align: center;
            font-family: "Edwardian Script ITC";
            font-size: 50pt;
            margin: 0;
            height: 84px;
        }
        .style20
        {
            text-align: center;
            height: 28px;
        }
        .style21
        {
            font-family: "Edwardian Script ITC";
            font-size: x-large;
            color: #333333;
        }
        .style22
        {
            color: #333333;
        }
        .style23
        {
            color: #333333;
            margin-bottom: 0.5;
        }
        .style24
    {
        text-align: center;
        font-family: "French Script MT";
        font-size: 50pt;
        color: #000000;
        height: 97px;
        margin: 0;
    }
        .style25
    {
        width: 510px;
        height: 47px;
    }
    .style26
    {
        color: #FF0000;
        margin-bottom: 0.5;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style19">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/IMAGES/topCally2.png" />
    </p>
<p class="style24">
        Please Respond</p>
    
    <p class="style20">
        <asp:Image ID="Image3" runat="server" Height="16px" 
            ImageUrl="~/IMAGES/middleCally2.png" Width="95px" />
    </p>
        <p class="style1">
            <span class="style21">First Name:
    </span>
    <asp:TextBox ID="FirstName" runat="server" Width="217px" CssClass="style21"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="FirstName" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
            <span class="style22">Last Name:
    </span>
    </span></span>
    <asp:TextBox ID="LastName" runat="server" Width="217px" CssClass="style21"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="LastName" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
            <span class="style22">Email:
    </span>
    </span></span>
    <asp:TextBox ID="EmailBox" runat="server" Width="255px" CssClass="style21"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="EmailBox" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RadioButton ID="Attending" runat="server" GroupName="Response" 
        Text="I am Attending" Checked="True" CssClass="style23" />
    <br />
    <asp:RadioButton ID="notAttending" runat="server" GroupName="Response" 
        Text="I am NOT Attending  " CssClass="style26" />
    <br />
    <br />
            <span class="style22">Number of guests attending in your party (including you):
       
   


    
            </span>
       
   


    
    </span></span>
       
   


    
    <asp:DropDownList ID="numberAttending" runat="server" 
        onselectedindexchanged="numberAttending_SelectedIndexChanged" 
        AutoPostBack="True" CssClass="style21">
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
        <asp:ListItem>9</asp:ListItem>
    </asp:DropDownList>
       
   


    
    <br class="style22" />
    <div class="style1">
    <asp:Panel ID="NamesPanel" runat="server" Height="100%" Wrap="False" 
            CssClass="style21">
    </asp:Panel>
    </div>
    <p class="style18">
        <span class="style22">Password:
        </span>
        <input id="invitePassword" name="invitePassword" type="password" 
            class="style22" /><asp:Label 
            ID="validPass" runat="server" CssClass="style17" Text="Invalid Password!" 
            Visible="False"></asp:Label>
</p>
    <p class="style1">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            CssClass="style13" Height="56px" Width="242px" BorderStyle="None" 
            Font-Size="XX-Large" />
    </p>
<p class="style1">
    <img class="style25" src="IMAGES/bottomCally2.png" /></p>
</asp:Content>
