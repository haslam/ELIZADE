<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ModulesInRoleSelection.ascx.cs"
    Inherits="Controls_ModulesInRoleSelection" %>
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
            <td style="width: 47%">
                <asp:Label skinid="hiLabel" ID="lblModuleName" runat="server" Text='<%# Eval("ModuleName") %>'></asp:Label>
                <asp:Label skinid="hiLabel" ID="lblModuleID" runat="server" Visible="false" Text='<%# Eval("ModuleID") %>'></asp:Label></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
<br />
<asp:LinkButton ID="chkAll" runat="server" Text="Check All" OnClick="chkAll_Click" />&nbsp;
<asp:Button ID="BtnCommand" runat="server" Text="Save Settings" OnClick="BtnCommand_Click" />&nbsp;
<asp:LinkButton ID="chkuncheckall" runat="server" Text="Uncheck All" OnClick="chkuncheckall_Click" />
&nbsp;
<asp:PlaceHolder ID="plcModulePriviledges" runat="server" />
