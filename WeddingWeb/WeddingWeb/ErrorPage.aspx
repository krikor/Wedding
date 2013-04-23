<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="WeddingWeb.ErrorPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/IMAGES/error-icon.png" />
    </p>
    <p class="style1">
        An error happend while saving your response!</p>
<p class="style1">
        Please go back and make sure the email you put in is valid. If the error 
        persists contact Krikor.</p>
    <p class="style1">
        email: krikor_nigoghosian@hotmail.com</p>
</asp:Content>
