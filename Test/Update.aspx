<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" AutoGenerateEditButton="True" DataKeyNames="ExpenditureID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Are you sure?')" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ExpenditureID" HeaderText="ExpenditureID" InsertVisible="False" ReadOnly="True" SortExpression="ExpenditureID" />
            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
            <asp:BoundField DataField="doe" HeaderText="Date" SortExpression="doe" />
            <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EyugaaDBConnectionString2 %>" SelectCommand="SELECT [ExpenditureID], [amount], [doe], [description] FROM [expenditure] WHERE ([userid] = @userid)" UpdateCommand="UPDATE expenditure SET amount=@amount, doe=@doe, description=@description WHERE ExpenditureID=@ExpenditureID" DeleteCommand="DELETE FROM expenditure WHERE ExpenditureID=@ExpenditureID">
        <SelectParameters>
            <asp:SessionParameter Name="userid" SessionField="UserLogin" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="amount" Type="String"/>
            <asp:Parameter Name="doe" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="ExpenditureID" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

