<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LodgeTrans.aspx.cs" Inherits="WeddingWeb.LodgeTrans" %>
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
            color: #333333;
        }
        .style3
        {
            text-align: center;
            font-size: large;
            font-family: "Times New Roman", Times, serif;
        }
    .style14
    {
        text-align: center;
        font-family: "French Script MT";
        font-size: 50pt;
        height: 87px;
            margin-top: 0px;
        }
        .style15
        {
            text-align: center;
            font-size: 25pt;
            font-family: "Times New Roman", Times, serif;
        }
        .style16
        {
            text-align: center;
        }
        .style17
        {
            width: 163px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style14">
        Lodging</p>
        <p class="style1">           
                    
        <iframe width="705" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps/ms?msa=0&amp;msid=214866429135896797988.0004dad17a4c801861280&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=39.768436,-104.971619&amp;spn=0.738891,1.167297&amp;z=9&amp;output=embed"></iframe><br />
            <small>View <a href="https://maps.google.com/maps/ms?msa=0&amp;msid=214866429135896797988.0004dad17a4c801861280&amp;hl=en&amp;ie=UTF8&amp;t=m&amp;ll=39.768436,-104.971619&amp;spn=0.738891,1.167297&amp;z=9&amp;source=embed" style="color:#0000FF;text-align:left">Alexis and Krikor's Wedding</a> in a larger map</small>
        </p>
    <p class="style3">           
                    
        <strong>We have a block of rooms reserved for our guests from July 25th to July 
        27th at a dicounted rate in two hotels. Click on the hotel logos bellow to get to 
        their reservation pages. Our group code is &#39;CNW&#39; for both hotels:</strong></p>
    <p class="style3">           
                    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="60px" 
            ImageUrl="~/IMAGES/Hilton-Garden-Inn-Logo-Wallpaper.png" 
            PostBackUrl="http://www.denverhighlandsranch.stayhgi.com" Width="248px" />
    </p>
    <p class="style3">           
                    
        1050 Plaza Dr, Highlands Ranch, CO 80126<br />
        <nobr>
        <span>(303) 683-4100</span></nobr></p>
    <p class="style16">
        <span style="font-size: 11.0pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">
        This hotel has rooms for us starting 7/25/14 and departing 7/27/14.</span>
        <span style="color: red">The reservations must be made no later than 6/26/14</span><o:p>. </o:p>
    </p>
    <p class="style16">
        King Bed - $89.00 + tax<o:p></o:p></p>
    <p class="style16">
        2 Queen Beds - $89.00 + tax<o:p></o:p></p>
    <p class="style16">
        King Bed Suite - $139.00 + tax<o:p></o:p></p>
    <p class="style16">
        To make the reservations call 303-683-4100, ask for the COHEN-NIGOGHOSIAN 
        WEDDING or visit <a href="http://www.denverhighlandsranch.stayhgi.com">
        www.denverhighlandsranch.stayhgi.com</a> and make the reservations using your 
        group code CNW.<o:p>
        <o:p>These rooms <i style="mso-bidi-font-style: normal">
        <span style="color: red">do not</span></i><span style="color: red"> </span>
        include breakfast.<o:p></o:p> </o:p>
        </o:p>
        Cancellation policy is: Can cancel up to 6:00pm the day of arrival. Hotel has an 
        indoor pool, hot tub, and exercise room.<o:p></o:p></p>
    <p class="style16">
        <o:p></o:p>
        <img class="style17" src="IMAGES/middleCally2.png" /></p>
    <p class="style3">           
                    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="97px" 
            ImageUrl="~/IMAGES/Hampton Inn Logo.png" 
            PostBackUrl="http://hamptoninn3.hilton.com/en/hotels/colorado/hampton-inn-and-suites-denver-highlands-ranch-DENHLHX/index.html" 
            Width="191px" />
    </p>
    <p class="style3">           
                    
        <span style="color: rgb(34, 34, 34); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.1200008392334px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">
        3095 W County Line Rd, Littleton, CO 80129</span><br 
            style="color: rgb(34, 34, 34); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.1200008392334px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
        <nobr style="color: rgb(34, 34, 34); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 16.1200008392334px; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
        <span>(303) 794-1800</span></nobr></p>
    <p class="style16">
        This hotel has rooms for us starting 7/24/14 and departing 7/28/14.
        <span style="color: red">The reservations must be made no later than 7/2/14.<o:p></o:p></span></p>
    <p class="style16">
        King Bed- $109.00 + tax<o:p></o:p></p>
    <p class="style16">
        2 Queen Beds – $109.00 + tax<o:p></o:p></p>
    <p class="style16">
        King Bed Suite - $139.00 + tax<o:p></o:p></p>
    <p class="style16">
        To make the reservations call 303-794-1800 or visit
        <a href="http://www.hamptoninnhr.com">www.hamptoninnhr.com</a> and make the 
        reservations using your group code CNW.<o:p> There are 10 rooms available and if 
        we need more they will add rooms. There are 4 king rooms, 4 double queen rooms 
        and 2 king suit rooms. These rooms include breakfast. </o:p>
        Cancellation policy is: Can cancel up to 6:00pm the day of arrival. Hotel has an 
        outside patio, inside pool, hot tub, and large exercise room.<o:p></o:p></p>
    <p class="style3">           
                    
        <img class="style17" src="IMAGES/middleCally2.png" /></p>
    <p class="style3">           
                    
        <strong>Other Hotels in the area are (sorted by distance to HR Mansion):</strong></p>
    <p class="style3">           
                    
        <a href="http://www.marriott.com/hotels/travel/denhr-residence-inn-denver-highlands-ranch/">
        Marriot Residence Inn</a></p>
    <p class="style3">           
                    
        <a href="http://www.hoteldenvertech.com/">Comfort Suites</a></p>
    <p class="style3">           
                    
        <a href="http://www.marriott.com/hotels/travel/denfs-fairfield-inn-and-suites-denver-tech-center-south/">
        Marriot Fairfield Inn</a></p>
    <p class="style3">           
                    
        <a href="http://denversouth.place.hyatt.com/en/hotel/home.html?src=agn_mls_hp_lclb_gplaces_denzs">
        Hyatt Place</a></p>
    <p class="style3">           
                    
        &nbsp;</p>
</asp:Content>
