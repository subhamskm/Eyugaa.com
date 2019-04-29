<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td>Enter your Email ID or User ID</td>
            <td>
                <asp:TextBox ID="txtID" runat="server" style="margin-left: 0px" Width="282px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" />
                <br />
                <a href="index.aspx">Click here</a> to move to Login page.</td>
        </tr>
    </table>
</asp:Content>

