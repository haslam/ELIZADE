<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ScheduleServiceListGrid.ascx.cs" Inherits="Controls_ScheduleServiceListGrid" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CssClass="table" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
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
    <Columns>
        <asp:TemplateField HeaderText="Company Name/FullName">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("FullName") %>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("NameOfCompany") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Contact Person">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ContactPerson") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Booking Type">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("CompanyType") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Mobile Number">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("PhoneNo") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Service Type">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ServiceRepairType") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Booked Date">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("DropOffDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# (bool.Parse(Eval("Incomplete").ToString()) == false)?"Pending":"Completed" %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "/a.aspx?p=view-schedule-services&sid=" + Eval("Id") %>' runat="server">View Detail</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "/a.aspx?p=update-schedule-services&sid=" + Eval("Id") %>' runat="server">Update Status</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
