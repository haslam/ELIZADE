<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddVehicleCategory.ascx.cs" Inherits="Controls_AddVehicleCategory" %>
<style type="text/css">
    .auto-style1 {
        font-weight: bold;
        text-align: right;
    }
</style>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<table style="width: 100%;">
    <tbody>
        <tr>
            <td class="auto-style1">Id</td>
            <td colspan="3">
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Name</td>
            <td colspan="3">
                <asp:TextBox ID="txtName" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:CheckBox ID="chkActive" Text="Active?" runat="server" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save Vehicle Category" OnClick="BtnCommand_Click" />
            </td>
            <td style="width: 57px">&nbsp;</td>
            <td class="style5">&nbsp;
                &nbsp;
            </td>
            <td style="width: 57px">&nbsp;
            </td>
        </tr>
    </tbody>
</table>
<hr />
