<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link href="css/style.css" rel="stylesheet"> <%--this is linked to the css file for the place order page--%>
        <p>
        <br />
            <div class="auto-style40">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Checkout Shopping Cart" Font-Size="X-Large" ViewStateMode="Inherit"></asp:Label> <%--this is the label to show the user this is the checkout shopping cart page--%>
                <br>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" /> <%--The image logo which directs the user to the homepage--%>
            </br>
        <table class="auto-style7" align="center">
            <tr>
                <td class="auto-style8">Order ID</td>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" style="text-align: center"></asp:Label> <%--this is the label for the order ID--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Order Date</td>
                <td>
                    <asp:Label ID="Label3" runat="server" style="text-align: center"></asp:Label> <%--this is the label for the order date--%>
                </td>
            </tr>
        </table>
            <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="421px" ShowFooter="True" Width="651px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No" /> <%--these are all the fields that are in the grid view--%>
                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product">
                <ItemStyle Height="300px" HorizontalAlign="Center" Width="200px" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
            <HeaderStyle Height="40px" />
        </asp:GridView>
            </div>
        <table class="auto-style35" align="center">
            <tr>
                <td class="auto-style32">Type Your Address</td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="405px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31">Mobile</td>
                <td class="auto-style39">
                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="405px"></asp:TextBox>
                </td>
            </tr>
        </table>
            <div class="buttoncontainer">
        <asp:Button ID="Button1" runat="server" BackColor="#666666" Height="40px" OnClick="Button1_Click" Text="Place Order" Width="149px" />
    </div>
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

