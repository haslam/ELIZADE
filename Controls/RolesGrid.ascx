<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RolesGrid.ascx.cs" Inherits="Controls_RolesGrid" %>
<asp:GridView ID="UserRoleList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    EmptyDataText="No record yet in this list" CellPadding="5" CellSpacing="5" CaptionAlign="Left"
    HorizontalAlign="Left" OnPageIndexChanging="UserRoleList_PageIndexChanging" ForeColor="#333333" GridLines="None" BorderWidth="5" Width="100%">
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="UserRoleName" HeaderText="UserRole Name" ReadOnly="True"
            SortExpression="UserRoleName" />
        <asp:BoundField DataField="RoleDescription" HeaderText="Role Description" SortExpression="RoleDescription" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit User Role" NavigateUrl='<%# "~/a.aspx?p=userrole&action=1&userrolename=" + Eval("UserRoleName") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" Text="Add New User Role" NavigateUrl="~/a.aspx?p=userrole&action=0" />
