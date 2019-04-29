<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calculate.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 132px;
            text-align: left;
        }
        .auto-style6 {
            width: 132px;
            height: 26px;
            text-align: left;
        }
        .auto-style7 {
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            width: 931px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style9">
                <br />
                <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="January">January</asp:ListItem>
                    <asp:ListItem Value="February">February</asp:ListItem>
                    <asp:ListItem Selected="True">March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True">
                    <asp:ListItem Selected="True">2018</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" Width="327px" align="center">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <table align="center" class="auto-style1" style="margin-right: 0px; width: 230px; background-color:#4cff00">
                    <tr>
                        <td class="auto-style6">Bill per person</td>
                        <td class="auto-style7">
                            <asp:Label ID="lblBill" Text="0" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">You have paid</td>
                        <td class="auto-style7">
                            <asp:Label ID="lblPaid" Text="0" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="lblText" runat="server"></asp:Label>
                        </td>
                        <td style="border-color:#f00; border-width:10px; text-align:right">
                            <asp:Label ID="lblPay" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

