<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditFAQControl.ascx.cs" Inherits="Controls_EditFAQControl" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<table style="width: 100%;">
    <tbody>
        <tr>
            <td class="style3">
                FAQ Question
            </td>
            <td class="style1" colspan="3">
                <CKEditor:CKEditorControl ID="txtQuestion" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td style="width: 57px">&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style3">FAQ Answer</td>
            <td colspan="3">
                <CKEditor:CKEditorControl ID="txtAnswer" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3"><strong>Active</strong></td>
            <td colspan="3">
                <asp:CheckBox ID="chkActive"  Text="Active?" runat="server" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save FAQ" OnClick="BtnCommand_Click" />
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