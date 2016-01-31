<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsersListGrid.ascx.cs" Inherits="Controls_UsersListGrid" %>
<asp:GridView ID="UsersList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    EmptyDataText="No record yet in this list" CellPadding="4" CaptionAlign="Left"
    HorizontalAlign="Left" OnPageIndexChanging="UsersList_PageIndexChanging" ForeColor="#333333" GridLines="None" Width="100%">
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="UserName" HeaderText="UserName" ReadOnly="True" SortExpression="UserName" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <%--<asp:BoundField DataField="UserRole" HeaderText="User Role" SortExpression="UserRole" />--%>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit User" NavigateUrl='<%# "~/a.aspx?p=users&action=1&username=" + Eval("UserName") %>' />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit User In Roles" NavigateUrl='<%# "~/a.aspx?p=userinrole&action=1&username=" + Eval("UserName") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" Text="Add New User" NavigateUrl="~/a.aspx?p=users&action=0" />
