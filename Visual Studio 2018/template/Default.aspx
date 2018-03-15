<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%--  --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet"> <%--this homepage is linked to the css file for styling--%>
    <div class="row">
        <div class="col-md-6">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server"> <%--added a panel--%>
            </asp:UpdatePanel>
            <div id="myCarousel" class="carousel slide" data-ride="carousel"> <%--this is the slide that moves--%>
  <!-- Indicators -->
  <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
      <li data-target="#myCarousel" data-slide-to="7"></li>
      <li data-target="#myCarousel" data-slide-to="8"></li>
      <li data-target="#myCarousel" data-slide-to="8"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" align="center">
    <div class="item active">
      <img src="images/slideshow/Flyer.png" alt="pic1" align="middle" class="auto-style51">  <%--these are all images in the carousel slide--%>  
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide1.png" alt="pic2">
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide2.png" alt="pic3">
    </div>
       
    <div class="item">
      <img src="images/slideshow/Imageslide3.png" alt="pic4">
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide4.png" alt="pic5">
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide5.png" alt="pic6">
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide6.png" alt="pic7">
    </div>

    <div class="item">
      <img src="images/slideshow/Imageslide7.png" alt="pic8">
    </div>

  </div>

    <p align="center">
        <br>
        <strong>MalaBliss Selling ladies clothing, from both the Asian and English market at affordable prices. <%--informformation about the clothing website--%>
        </br>
        <br>
        MalaBliss is aimed at 18-50 year old woman. Malabliss sells upto 1000 products, clothing of long dresses, short dresses, cardigans, t-shirts and many more style of clothing added every week.
        </br>
        <br>
        MalaBliss aims to expand on more stores within UK and hopefully globally around the world.
        </br>
        <br>
        MalaBliss has every type of clothing for any womans perfect match outfits.
        </br>
        <br>
        MalaBliss provides a top level online shopping fashion and allows every customer to get items delivered for free in the UK thats if each order is more than £30.  
        </br>
        </strong>
    </p>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev"> <%--this is the previous arrow on the left side of the carousel--%>
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next"> <%--this is the next arrow on the left side of the carousel--%>
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </div>
    </div>
    
&nbsp;

</asp:Content>

