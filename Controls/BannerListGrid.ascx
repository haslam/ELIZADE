<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BannerListGrid.ascx.cs" Inherits="Controls_BannerListGrid" %>
<asp:GridView ID="drgBaanners" CssClass="table" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:BoundField DataField="ObjectOfDisplay" HeaderText="ObjectOfDisplay" SortExpression="ObjectOfDisplay" />
        <asp:BoundField DataField="OODType" HeaderText="OODType" SortExpression="OODType" />
        <asp:BoundField DataField="Link" HeaderText="Link" SortExpression="Link" />
        <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit Banner" NavigateUrl='<%# "~/a.aspx?p=edit-banner&action=1&bid=" + Eval("id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [Banners] ORDER BY [id]"></asp:SqlDataSource>


