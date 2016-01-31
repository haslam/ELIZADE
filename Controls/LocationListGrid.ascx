<%@ Control Language="C#" AutoEventWireup="true" CodeFile="LocationListGrid.ascx.cs" Inherits="Controls_LocationListGrid" %>
<asp:GridView ID="GridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="table" DataKeyNames="ID">
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="LocType" HeaderText="LocType" SortExpression="LocType" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:BoundField DataField="SalesPhone" HeaderText="SalesPhone" SortExpression="SalesPhone" />
        <asp:BoundField DataField="SalesEmail" HeaderText="SalesEmail" SortExpression="SalesEmail" />
        <asp:BoundField DataField="ServicePhone" HeaderText="ServicePhone" SortExpression="ServicePhone" />
        <asp:BoundField DataField="ServiceEmail" HeaderText="ServiceEmail" SortExpression="ServiceEmail" />
        <asp:BoundField DataField="PartsPhone" HeaderText="PartsPhone" SortExpression="PartsPhone" />
        <asp:BoundField DataField="PartsEmail" HeaderText="PartsEmail" SortExpression="PartsEmail" />
        <asp:BoundField DataField="GeneralEnquiryEmail" HeaderText="GeneralEnquiryEmail" SortExpression="GeneralEnquiryEmail" />
        <asp:CheckBoxField DataField="IsHeadOfice" HeaderText="IsHeadOfice" SortExpression="IsHeadOfice" />
         <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit Location" NavigateUrl='<%# "~/a.aspx?p=edit-location&action=1&lid=" + Eval("ID") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [Locations]">
</asp:SqlDataSource>

