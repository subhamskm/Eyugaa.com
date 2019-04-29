<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup-css.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="signup-stylesheet.css" />
</head>
<body>
    <div class="signupbox">
        <img src="img_avatar.png" class="avatar" />
        <h1>Signup Here</h1>
        <form id="form1" runat="server">
            <p>Firstname</p>
            <asp:TextBox ID="txtFirstname" runat="server" CssClass="txtbox" placeholder="Enter firstname"></asp:TextBox>
            <p>Lastname</p>
            <asp:TextBox ID="txtLastname" runat="server" CssClass="txtbox" placeholder="Enter lastname"></asp:TextBox>
            <p>Mobile Number</p>
            <asp:TextBox ID="txtMobile" runat="server" CssClass="txtbox" placeholder="Enter mobile number"></asp:TextBox>
            <p>Email address</p>
            <asp:TextBox ID="txtEmailID" runat="server" CssClass="txtbox" placeholder="Enter email address" TextMode="Email"></asp:TextBox>
            <p>User ID</p>
            <asp:TextBox ID="txtUserID" runat="server" CssClass="txtbox" placeholder="Enter User ID"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="txtPasswd" runat="server" CssClass="txtbox" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnSignup" runat="server" Text="Sign Up" class="submit" OnClick="btnSignup_Click" />
        </form>
    </div>
</body>
</html>
