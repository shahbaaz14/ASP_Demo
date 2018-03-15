<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <asp:Label ID="Label_welcome" runat="server" Text="Welcome ..."></asp:Label>
    <br />
    <asp:Button ID="Button_logout" runat="server" OnClick="Button_logout_Click" Text="Logout" />
</p>
</asp:Content>

