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
            font-size: 50pt;
            margin:0;
            margin-bottom:0;
        }
        .style5
        {
            font-size: 70pt;
           margin: 0;
            
        }
        .style7
        {
            text-align: center;
            font-family: "Edwardian Script ITC";
            font-size: xx-large;
            margin: 0;
        }
        .style9
        {
            font-family: "Edwardian Script ITC";
        }
        .style10
        {
            font-family: "Edwardian Script ITC";
            font-size: large;
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
        .style15
        {
            color: #696969;
            margin-bottom:0.5;
            
        }
        .style17
        {
            color: #FF0000;
            font-family: Arial;
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style2">
        &nbsp;</p>
<p class="style2">
        <span class="style5">Please Respond</span></p>
    <p class="style7">
        (only one response per party)</p>
    
    <p>
        &nbsp;</p>
        <p class="style1">
            <span class="style13">First Name:
    </span>
    <asp:TextBox ID="FirstName" runat="server" Width="217px" CssClass="style13"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="FirstName" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
    Last Name:
    </span></span>
    <asp:TextBox ID="LastName" runat="server" Width="217px" CssClass="style13"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="LastName" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
    Email:
    </span></span>
    <asp:TextBox ID="EmailBox" runat="server" Width="255px" CssClass="style13"></asp:TextBox>
            <span class="style9"><span class="style14">
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="EmailBox" CssClass="style17">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RadioButton ID="Attending" runat="server" GroupName="Response" 
        Text="I am Attending" Checked="True" CssClass="style15" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:RadioButton ID="notAttending" runat="server" GroupName="Response" 
        Text="I am NOT Attending  " CssClass="style15" />
    <br />
    <br />
    Number of Guests attending in your Party (Including you):
       
   


    
    </span></span>
       
   


    
    <asp:DropDownList ID="numberAttending" runat="server" 
        onselectedindexchanged="numberAttending_SelectedIndexChanged" 
        AutoPostBack="True" CssClass="style13">
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
    <br class="style10" />
       
   


    
    <br />
    <div class="style1">
    <asp:Panel ID="NamesPanel" runat="server" Height="100%" Wrap="False" 
            CssClass="style13">
    </asp:Panel>
    </div>
    <br />
    <p class="style1">
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            CssClass="style13" Height="56px" Width="242px" BorderStyle="None" 
            Font-Size="XX-Large" />
    </p>
    <br />
    <br />
    <br />
    
</asp:Content>
