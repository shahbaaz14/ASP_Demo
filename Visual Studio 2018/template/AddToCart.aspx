<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="AddToCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet"><%-- the add to cart page is linked to the css file--%>
    <p class="text-center">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="150px" ImageUrl="images/malabliss_logo.png" OnClick="ImageButton1_Click" Width="280px" />  <%--The image logo which directs the user to the homepage--%>
        <br>
        <asp:Label ID="Label1" runat="server" Text="YOUR BAG" Font-Bold="True" Font-Size="X-Large"></asp:Label> <%--this label shows the user this is your shopping bag page--%>
        </br>
    </p>
    <p>
        <div class="text-center"> <%--I have kept the cart form in a div so it is alltogether, whicg also is in the center--%>
        You Have 
        <asp:Label ID="Label2" runat="server" Font-Bold="True"></asp:Label> <%--label to show the number of products are in the cart--%>
&nbsp;Product
&nbsp;In Your Cart
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WomanDresses.aspx">Continue Shopping</asp:HyperLink> <%--this allows the user to go back to the products page, whcih allows the user to browse more products--%>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="373px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="1111px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No"> <%--this shows the S.No of the product--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="productid" HeaderText="Product ID"> <%--this field show the product ID--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image"> <%--this field is for the products to display--%>
                    <ControlStyle Height="300px" Width="200px" />
                    <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle Height="300px" HorizontalAlign="Center" Width="200px" VerticalAlign="Middle" />
                </asp:ImageField>
                <asp:BoundField DataField="productname" HeaderText="Product Name "> <%--this field shows the name of the product--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="price" HeaderText="Price"> <%--this field shows the price of the product--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quanitity"> <%--this field shows the number of products the user has selected--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price"> <%--this field show the total price of the shopping--%>
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" > <%--this field shows the user that the product can be removed--%>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle Height="50px" />
        </asp:GridView>
        <div class="chceckoutbutton"> <%--this checkout button proceeds to the place order page--%>
        <asp:Button ID="Button1" runat="server" BackColor="#666666" Height="51px" OnClick="Button1_Click" Text="Checkout" Width="201px" />
            </div>
    </p>
    <p>
        &nbsp;</p>

</asp:Content>

