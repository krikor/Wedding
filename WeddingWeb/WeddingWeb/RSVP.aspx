<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RSVP.aspx.cs" Inherits="WeddingWeb.RSVP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Please Respond (Only one response per Party)</p>
    <p>
        &nbsp;</p>
    First Name:
    <asp:TextBox ID="FirstName" runat="server" Width="153px"></asp:TextBox>
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="FirstName">
    </asp:RequiredFieldValidator>
    <br />
    Last Name:
    <asp:TextBox ID="LastName" runat="server" Width="198px"></asp:TextBox>
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="LastName">
    </asp:RequiredFieldValidator>
    <br />
    Email:
    <asp:TextBox ID="EmailBox" runat="server" Width="251px"></asp:TextBox>
    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server" 
             ErrorMessage="Required!" 
             ControlToValidate="EmailBox">
    </asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:RadioButton ID="Attending" runat="server" GroupName="Response" 
        Text="I am Attending" Checked="True" />
    <br />
    <asp:RadioButton ID="notAttending" runat="server" GroupName="Response" 
        Text="I am NOT Attending" />
    <br />
    <asp:CheckBox ID="WeddingParty" runat="server" 
        Text="I am Part of the Wedding Party" />
    <br />
    Number of Guests attending in your Party (Including you):
       
   


    
    <asp:DropDownList ID="numberAttending" runat="server" 
        onselectedindexchanged="numberAttending_SelectedIndexChanged" 
        AutoPostBack="True">
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
    <br />
       
   


    
    <br />
    <asp:Panel ID="NamesPanel" runat="server" Height="100%" Wrap="False">
    </asp:Panel>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
    <br />
</asp:Content>
