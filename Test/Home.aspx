<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style7 {
        text-align: center;
        font-size: medium;
    }
        .auto-style8 {
            text-align: center;
            width: 205px;
        }
        .auto-style9 {
            text-align: center;
            width: 158px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center">
        <tr>
            <td colspan="2" style="text-align: center">::LOGIN::</td>
        </tr>
        <tr>
            <td class="auto-style9">User ID</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtUserId" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Password</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="bitLogin" runat="server" OnClick="bitLogin_Click" Text="Log in" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">If not registered, <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click here</asp:LinkButton>
&nbsp;to Sign up.</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

