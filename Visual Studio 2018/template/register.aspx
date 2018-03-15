<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet">

    <html>
        <div align="center">
            <asp:Label ID="Label1" runat="server" Text="EXISITING CUSTOMER" Font-Bold="True" Font-Size="X-Large" style="text-align: center"></asp:Label>
            <br>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" />
            </br>
            <br>
            <table class="auto-style48" align="center">
                <tr>
            <td class="auto-style19"><strong>User Name:</strong></td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBoxUN" runat="server" Height="21px" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>E-mail:</strong></td>
            <td class="auto-style31">
                <asp:TextBox ID="TextBoxEMAIL" runat="server" Height="21px" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxEMAIL" ErrorMessage="E-mail is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxEMAIL" ErrorMessage="You must enter the vaild E-mail Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>Password:</strong></td>
            <td class="auto-style50">
                <asp:TextBox ID="TextBoxPASS" runat="server" Height="21px" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPASS" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Confirm- Password:</strong></td>
            <td class="auto-style49">
                <asp:TextBox ID="TextBoxCPASS" runat="server" Height="21px" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCPASS" ErrorMessage="Confirm Password is required." ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPASS" ControlToValidate="TextBoxCPASS" ErrorMessage="Both password must be the same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Gender:</strong></td>
            <td class="auto-style33">
                <asp:DropDownList ID="DropDownListGENDER" runat="server" Width="180px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style27">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListGENDER" ErrorMessage="Select your gender" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style45"></td>
            <td class="auto-style46">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" BackColor="#666666" ForeColor="White" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td class="auto-style47"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
            </div>
</html>  
</asp:Content>

