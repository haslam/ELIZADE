<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NewsListGrid.ascx.cs" Inherits="Controls_NewsListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table" DataKeyNames="id">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit News" NavigateUrl='<%# "~/a.aspx?p=edit-news&action=1&nid=" + Eval("id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [id], [title], [body] FROM [News]">
</asp:SqlDataSource>

