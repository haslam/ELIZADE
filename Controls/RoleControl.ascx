<%@ Control Language="C#" AutoEventWireup="true" CodeFile="RoleControl.ascx.cs" Inherits="Controls_RoleControl" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<table width="100%">
    <tbody>
        <tr>
            <td style="width: 211px">
                <b>User Role Name</b></td>
            <td>
                <asp:TextBox ID="txtUserRoleName" runat="server"></asp:TextBox></td>
            <td style="width: 57px">
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                <b>Role Description</b></td>
            <td>
                <asp:TextBox ID="txtRoleDescription" TextMode="MultiLine" runat="server" Width="70%"></asp:TextBox></td>
            <td style="width: 57px">
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 211px;">
            </td>
            <td style="height: 21px">
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Add  RoleUser" OnClick="BtnCommand_Click" />
                &nbsp;
                <asp:PlaceHolder ID="plcModuleinRole" runat="server" />
            </td>
            <td style="width: 57px; height: 21px">
            </td>
        </tr>
    </tbody>
</table>
