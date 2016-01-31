<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddNews.ascx.cs" Inherits="Controls_AddNews" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<table style="width: 100%;">
    <tbody>
        <tr>
            <td class="style3">Title</td>
            <td colspan="3">
                <asp:TextBox ID="txtTitle" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">Body</td>
            <td colspan="3">
                <CKEditor:CKEditorControl ID="txtBody" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save News" OnClick="BtnCommand_Click" />
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
