<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="css/style.css" rel="stylesheet"> <%--this is linked to the css file for the login page--%>
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="RETURNING CUSTOMER" BackColor="White" Font-Bold="True" Font-Size="X-Large" style="text-align: center"></asp:Label> <%--this is label to show the user this is the login page--%>
        <br>    
        <asp:ImageButton ID="ImageButton2" runat="server" Height="200px" ImageUrl="images/malabliss_logo.png"  Width="331px" OnClick="ImageButton2_Click" /> <%--The image logo which directs the user to the homepage--%>
        </br>
        <br>
      <div class="loginfeilds">
        <table class="auto-style37">
            <tr>
        <td class="auto-style31"><strong>UserName</strong></td> <%--this is the username label--%>  
        </br>
        <br>
        <td class="auto-style42">
            <asp:TextBox ID="TextBoxUserName" runat="server" Width="180px"></asp:TextBox> <%--this is the text box for usename where types the username--%>
        </td>
        </br>
        <td class="auto-style33">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="Please enter UserName" ForeColor="Red"></asp:RequiredFieldValidator> <%--this is the validation for the username--%>
        </td>
        </tr>
        <br>
        <tr>
        <td class="auto-style39"><strong>Password</strong></td> <%--the is the label password--%>
        <td class="auto-style43">
            <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Remember me" Font-Bold="True"></asp:Label>
            <input id="Checkbox2" type="checkbox" />&nbsp;&nbsp;
            </td>
        </br>
        <td class="auto-style41">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator> <%--this is the validation for the password--%>
        </td>
        </tr>
        <br>
        <tr>
        <td class="auto-style38">

                    <asp:Label ID="Label4" runat="server" Text="Anti-bot valdation*"></asp:Label> <%--the is the title for the capcha part--%>
        

        </td>
        </br>
        <td class="auto-style44">


<p class="auto-style11">
        <br>    
        <asp:Label ID="Label5" runat="server" Text="Type the charecters you see in second box"></asp:Label> <%--this is a label that shows the reader to type the character in the second box--%>
        </br>
        <br>
        <asp:TextBox ID="txt_check" runat="server"></asp:TextBox> <%--this text box is where the user types the same characters in the generate text box--%>
        </br>
        <br>
        <asp:TextBox ID="txt_generate" runat="server"></asp:TextBox> <%--this text box is where the characters are, of what the user identically needs to copy--%>
        </br>
        <br>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="images/refresh-purple.png" Width="38px" OnClick="ImageButton1_Click" EnableTheming="True" ForeColor="Black" CssClass="auto-style12" /> <%--this is the refresh button for the user to get another set of characters--%>
        <asp:Button ID="btn_login" runat="server" Height="44px" Text="Sign In" Width="99px" OnClick="Button_Login_Click" BackColor="#666666" ForeColor="White" />
        </br>
        <br>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">New User Register Here</asp:HyperLink> <%--this is a link that allows the user to the register page when they can't login--%>
        </br>
        <br>
        <td class="auto-style34">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Incorrect Validation" ForeColor="Red"></asp:RequiredFieldValidator> <%--this is a validation that shows the user the password is incorrect--%>
        </td>
        </br>
</p>
</table>
        </div>
</asp:Content>

