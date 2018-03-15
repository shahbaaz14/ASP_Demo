<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlacedSuccessful.aspx.cs" Inherits="PlacedSuccessful" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet"> <%--this is linked to the css file for the place successful page--%>
    <p class="text-center">
        <br>    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" /> <%--The image logo which directs the user to the homepage--%>
        </br>
        <asp:Label ID="Label1" runat="server" Text="Your Order Has Been Placed Successfully. Thank You for Shopping with MalaBliss " CssClass="auto-style51" Font-Bold="True"></asp:Label> <%--this is label that shows the user that the order is successfully completed--%>
    </p>
</asp:Content>

