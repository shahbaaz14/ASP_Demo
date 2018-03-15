<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="WomanDresses.aspx.cs" Inherits="WomanDresses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link href="css/style.css" rel="stylesheet">
    <br>
    <asp:Label ID="Label19" runat="server"></asp:Label> <asp:Button ID="Button1_Logout" runat="server" OnClick="Button1_Click" Text="Logout" BackColor="#666666" ForeColor="White" align="right"/>
</br>
    <br>
        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" />
    </br>
    <br>
        <asp:Label ID="DressesTitleLabel" runat="server" Text="Dresses" Font-Bold="True" Font-Size="X-Large" style="text-align: center"></asp:Label>
</br>
        <br>
        <asp:Label ID="Label1" runat="server" Text="You Have Products in Your Cart" Font-Bold="True"></asp:Label>
        <asp:Label ID="Basket" runat="server" Text="You Have Products in Your Cart" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddToCart.aspx" Font-Bold="True">Show Cart</asp:HyperLink>   
        </br>
        <br>            
        <table class="auto-style59" __designer:mapid="19">
                        <tr __designer:mapid="1a">
                            <td class="auto-style60" __designer:mapid="1b">Price Range:</td>
                            <td __designer:mapid="1c" class="auto-style61">
                                <asp:DropDownList ID="priceRange" runat="server">
                                    <asp:ListItem>100</asp:ListItem>
                                    <asp:ListItem>95</asp:ListItem>
                                    <asp:ListItem>90</asp:ListItem>
                                    <asp:ListItem>85</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>75</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>65</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>55</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>45</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>35</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="3a">
                            <td class="auto-style52" __designer:mapid="3b">Size:</td>
                            <td class="auto-style55" __designer:mapid="3c">
                                <asp:DropDownList ID="size" runat="server">
                                    <asp:ListItem>S</asp:ListItem>
                                    <asp:ListItem>M</asp:ListItem>
                                    <asp:ListItem>L</asp:ListItem>
                                    <asp:ListItem>XL</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="42">
                            <td class="auto-style62" __designer:mapid="43">Colour:</td>
                            <td class="auto-style63" __designer:mapid="44">
                                <asp:DropDownList ID="colour" runat="server">
                                    <asp:ListItem>Red</asp:ListItem>
                                    <asp:ListItem>Blue</asp:ListItem>
                                    <asp:ListItem>Black</asp:ListItem>
                                    <asp:ListItem>Maroon</asp:ListItem>
                                    <asp:ListItem>Cheeteh</asp:ListItem>
                                    <asp:ListItem>Orange</asp:ListItem>
                                    <asp:ListItem>White</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr __designer:mapid="4d">
                            <td class="auto-style56" __designer:mapid="4e">
                                </td>
                            <td __designer:mapid="50" class="auto-style57">
                                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click1" />
                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
                            </td>
                        </tr>
                    </table>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE (([PriceRange] &lt;= @PriceRange) AND ([Size] = @Size) AND ([Colour] = @Colour))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="priceRange" Name="PriceRange" PropertyName="SelectedValue" Type="Int32" />
                                        <asp:ControlParameter ControlID="size" Name="Size" PropertyName="SelectedValue" Type="String" />
                                        <asp:ControlParameter ControlID="colour" Name="Colour" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
        </asp:SqlDataSource>
         <asp:Panel ID="Panel2" runat="server">
             </asp:Panel>
        </br>
    <asp:Panel ID="Panel1" runat="server">
    

                       <div class="text-center">
                           <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal" Width="781px">
                               <ItemTemplate>
                                   <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Product ID"></asp:Label>
                                   <asp:Label ID="Label16" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                                   <br />
                                   <asp:Label ID="Label17" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label>
                                   <br />
                                   <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                                   <br />
                                   <strong>Price £</strong><asp:Label ID="Label18" runat="server" Font-Bold="True" Text='<%# Eval("Price") %>'></asp:Label>
                                   <br />
                                   <strong>Quantity</strong>
                                   <asp:DropDownList ID="DropDownList1" runat="server">
                                       <asp:ListItem>1</asp:ListItem>
                                       <asp:ListItem>2</asp:ListItem>
                                       <asp:ListItem>3</asp:ListItem>
                                       <asp:ListItem>4</asp:ListItem>
                                       <asp:ListItem>5</asp:ListItem>
                                       <asp:ListItem>6</asp:ListItem>
                                       <asp:ListItem>7</asp:ListItem>
                                       <asp:ListItem>8</asp:ListItem>
                                   </asp:DropDownList>
                                   <br />
                                   <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="50px" ImageUrl="~/images/addtocart.jpg" Width="160px" />
                                   <p>
                                       &nbsp;</p>
                               </ItemTemplate>
                           </asp:DataList>
                       </div>
     </asp:Panel>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
                    <br />

</asp:Content>

