<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AwardListGrid.ascx.cs" Inherits="Controls_AwardListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="AYear" HeaderText="Award Year" SortExpression="AYear" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "/a.aspx?p=edit-award-year&yrid=" + Eval("Id") %>' runat="server">Edit</asp:HyperLink>   <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "/a.aspx?p=award-items-per-year&yrid=" + Eval("Id")  %>' runat="server">Items</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [AwardYears]"></asp:SqlDataSource>
<br />
<asp:HyperLink ID="HyperLink3" NavigateUrl="/a.aspx?p=add-new-award-year" runat="server">Add New Award Year</asp:HyperLink>