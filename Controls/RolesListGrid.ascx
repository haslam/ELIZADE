<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RolesListGrid.ascx.cs" Inherits="Controls_RolesListGrid" %>
<asp:GridView ID="UserRoleList" runat="server" AllowPaging="True" AutoGenerateColumns="False" CaptionAlign="Left" CellPadding="4" EmptyDataText="No record yet in this list" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" OnPageIndexChanging="UserRoleList_PageIndexChanging" Width="100%">
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <RowStyle BackColor="#EFF3FB" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="UserRoleName" HeaderText="UserRole Name" ReadOnly="True" SortExpression="UserRoleName" />
        <asp:BoundField DataField="RoleDescription" HeaderText="Role Description" SortExpression="RoleDescription" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/a.aspx?p=userrole&action=1&userrolename=" + Eval("UserRoleName") %>' Text="Edit User Role" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/a.aspx?p=userrole&amp;action=0" Text="Add New User Role" />

