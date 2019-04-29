<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Login"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Login-styelsheet.css" />
</head>
<body>
    <div class="loginbox">
        <img src="img_avatar2.png" class="avatar" />
        <h1>Login Here</h1>
        <form id="form1" runat="server">
            <p>Username</p>
            <asp:TextBox ID="txtUserId" runat="server" placeholder="Enter Username" class="txtbox"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter Password" CssClass="txtbox"></asp:TextBox>
            <asp:Button ID="btnSubmit" class="submit" runat="server" Text="Login" OnClick="btnSubmit_Click" /><br />
            <a href="forgotpwd.aspx">Lost your password?</a><br />
            <a href="signup-css.aspx">Don't have an account?</a>
        </form>
    </div>
</body>
</html>
