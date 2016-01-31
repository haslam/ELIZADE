<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ModulesPermission.ascx.cs"
    Inherits="Controls_ModulesPermission" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<asp:Label skinid="hiLabel" ID="lblRoleName" runat="server" Font-Bold="true" BackColor="#FFFF66" Text="Label"
    Width="80%"></asp:Label><br />
<br />
<asp:Repeater ID="ModuleList" runat="server">
    <HeaderTemplate>
        <table width="100%">
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td style="width: 3%">
                <asp:CheckBox ID="chkSelected" runat="server" /></td>
            <td style="width: 37%">
                <asp:Label skinid="hiLabel" ID="lblModuleName" runat="server" Text='<%# Eval("ModuleName") %>'></asp:Label>
                <asp:Label skinid="hiLabel" ID="lblModuleID" runat="server" Font-Bold="false" Visible="false" Text='<%# Eval("ModuleID") %>'></asp:Label></td>
            <td style="width: 15%">
                <asp:CheckBox ID="chkadd" runat="server" Font-Bold="true"  Text="Add" /></td>
            <td style="width: 15%">
                <asp:CheckBox ID="chkview" runat="server" Font-Bold="true"  Text="View" /></td>
            <td style="width: 15%">
                <asp:CheckBox ID="chkedit" runat="server" Font-Bold="true"  Text="Edit" /></td>
            <td style="width: 15%">
                <asp:CheckBox ID="chkdelete" runat="server" Font-Bold="true"  Text="Delete" /></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
&nbsp;<br />
&nbsp;
<asp:Button ID="BtnCommand" runat="server" Text="Save Priviledges" OnClick="BtnCommand_Click" />&nbsp;&nbsp;
&nbsp;