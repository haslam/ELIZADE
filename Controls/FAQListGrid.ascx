﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="FAQListGrid.ascx.cs" Inherits="Controls_FAQListGrid" %>
<script type="text/javascript">
    function Confirmation() {
        return confirm('WARNING: You are about to delete a record from the database');
    }
</script>
<asp:GridView ID="grdPageListGrid" runat="server" CssClass="table" DataKeyNames="Id" AutoGenerateColumns="False"
    AllowPaging="True" EmptyDataText="No record yet in this list" CaptionAlign="Left"
    HorizontalAlign="Left" AutoGenerateDeleteButton="True"
    OnRowDeleting="grdPageListGrid_RowDeleting"
    OnRowDataBound="grdPageListGrid_RowDataBound" OnPageIndexChanging="grdPageListGrid_PageIndexChanging" Width="100%">
    <Columns>
        <%--        <asp:BoundField DataField="Id" HeaderText="ID" Visible="true" ReadOnly="True" SortExpression="Id"
            InsertVisible="False" />--%>
        <asp:BoundField DataField="FaqQuestion" HeaderText="Faq Question" SortExpression="FaqQuestion" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit FAQ" NavigateUrl='<%# "~/a.aspx?p=edit-faq&action=1&pid=" + Eval("Id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" Text="Add New FAQ" NavigateUrl="~/a.aspx?p=add-faq&action=0" />

