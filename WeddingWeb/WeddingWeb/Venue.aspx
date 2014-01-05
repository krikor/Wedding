<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Venue.aspx.cs" Inherits="WeddingWeb.Venue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style14
        {
            width: 800px;
            height: 534px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="style1">
        <br />
    The Venue<br />
        <br />
        <img class="style14" src="IMAGES/img_3812.jpg" /><br />
        <br />
                    
        <iframe width="425" height="350" frameborder="0" scrolling="no" 
            marginheight="0" marginwidth="0" 
            src="https://maps.google.com/maps/ms?msa=0&amp;msid=214866429135896797988.0004dad17a4c801861280&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=39.768436,-104.971619&amp;spn=0.738891,1.167297&amp;z=9&amp;output=embed" 
            id="I1" name="I1"></iframe><br />
            <small>View <a href="https://maps.google.com/maps/ms?msa=0&amp;msid=214866429135896797988.0004dad17a4c801861280&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=39.768436,-104.971619&amp;spn=0.738891,1.167297&amp;z=9&amp;source=embed" style="color:#0000FF;text-align:left">Alexis and Krikor's Wedding</a> in a larger map</small>
        <br />
    </div>
</asp:Content>
