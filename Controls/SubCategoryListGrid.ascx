<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SubCategoryListGrid.ascx.cs" Inherits="Controls_SubCategoryListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
    <Columns>
        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
<%--        <asp:BoundField DataField="SubCatId" HeaderText="SubCatId" SortExpression="SubCatId" InsertVisible="False" ReadOnly="True" />--%>
        <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" SortExpression="SubCategoryName" />
        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit Vehicle Sub-Category" NavigateUrl='<%# "~/a.aspx?p=edit-vehicle-sub-category&action=1&vcid=" + Eval("SubCatId") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="Select c.Name CategoryName, s.RecId SubCatId, s.SubCartName SubCategoryName,s.Active
from CarCategory c join SubCarCategory s on s.CatID = c.Id
order by CategoryName"></asp:SqlDataSource>
<br />

<asp:HyperLink ID="HyperLink2" NavigateUrl="~/a.aspx?p=add-vehicle-sub-category" runat="server">Add New Sub-Category</asp:HyperLink>
