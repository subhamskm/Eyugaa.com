<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 515px;
        }
        .auto-style5 {
            width: 224px;
        }
        .auto-style6 {
            width: 210px;
            height: 21px;
        }
        .auto-style7 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style8 {
            width: 224px;
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td class="auto-style7" colspan="2">::SIGN UP::</td>
        </tr>
        <tr>
            <td class="auto-style6">First Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtFirst" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Last Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtLast" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Mobile Number</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Email ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">User ID</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="btnSignup" runat="server" OnClick="btnSignup_Click" style="text-align: center" Text="Sign Up" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

