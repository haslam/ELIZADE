<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BODListGrid.ascx.cs" Inherits="Controls_BODListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit Member" NavigateUrl='<%# "~/a.aspx?p=edit-member&action=1&mid=" + Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [Id], [FullName], [Title], [JobTitle] FROM [Member] WHERE ([isBoardMember] = @isBoardMember)">
    <SelectParameters>
        <asp:Parameter DefaultValue="True" Name="isBoardMember" Type="Boolean" />
    </SelectParameters>
</asp:SqlDataSource>

