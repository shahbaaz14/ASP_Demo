<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FindStore.aspx.cs" Inherits="FindStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet"> <%--the page is linked to the css file for the find store page--%>
    <br>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" />  <%--The image logo which directs the user to the homepage--%>
    </br>
    <script type="text/javascript"  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC4usq31zizx6AAnN-Y9df9_XCve-btJxA&callback=initMap"></script> <%--this is the link for google maps--%> 
    <script>
if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function (p) {
        var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
        var LatLng2 = new google.maps.LatLng(53.483959, -2.244644);
        var mapOptions = {
            center: LatLng,
            zoom: 13,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        //this is a marker on the pin point that shows the user where the store is, where destination is on the map
        var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
        var marker = new google.maps.Marker({ 
            position: LatLng,
            map: map,
            title: "Your Destination" 
        }); 
        //this is a marker on the pin point that shows the user where they are located on the map
        var marker2 = new google.maps.Marker({
            position: LatLng2,
            map: map,
            title1: "You Are Here"
        });
        //this allows the user to pin point that is linked to the marker point of the destination and the loction point marker  
        google.maps.event.addListener(marker, "click", function (e) {
            var infoWindow = new google.maps.InfoWindow();
            infoWindow.setContent(marker.title);
            infoWindow.setContent(marker2.title1);
            infoWindow.open(map, marker);
        });

    });
} else {
    alert('Geo Location feature is not supported in this browser.');
}
</script>
<div id="dvMap" style=" width:100%; height: 500px"> <%--the display size of the map on the page--%>
</div>
</asp:Content>

