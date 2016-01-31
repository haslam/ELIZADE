<%@ Control Language="C#" AutoEventWireup="true" CodeFile="VehicleListGrid.ascx.cs" Inherits="Controls_VehicleListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table" DataKeyNames="Id">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
         <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit Vehicle Category" NavigateUrl='<%# "~/a.aspx?p=edit-vehicle-category&action=1&vcid=" + Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [CarCategory]">
</asp:SqlDataSource>
<br />

<asp:HyperLink ID="HyperLink2" NavigateUrl="~/a.aspx?p=add-vehicle-category" runat="server">Add New Category</asp:HyperLink>
