<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1024px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 507px;
            height: 26px;
            text-align: center;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            font-size: medium;
        }
        .auto-style6 {
            width: 507px;
            height: 21px;
            text-align: center;
            font-size: medium;
        }
        .auto-style7 {
            text-align: center;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style7" colspan="2">:: EXPENDITURE ::</td>
        </tr>
        <tr>
            <td class="auto-style7">DATE</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="238px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">AMOUNT</td>
            <td>
                <asp:TextBox ID="txtAmt" runat="server" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">DESCRIPTION</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="235px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" CssClass="auto-style5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="2">
                <asp:Label ID="lblStatus" runat="server" CssClass="auto-style5"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

