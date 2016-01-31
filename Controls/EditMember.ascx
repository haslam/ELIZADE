<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditMember.ascx.cs" Inherits="Controls_EditMember" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<table style="width: 100%;">
    <tbody>
        <tr>
            <td class="style3">
                <strong>Title</strong>
            </td>
            <td class="style1" colspan="3">
                <asp:DropDownList ID="ddlTitle" runat="server">
                    <asp:ListItem Value="Dr.">Dr.</asp:ListItem>
                    <asp:ListItem Value="Mr.">Mr.</asp:ListItem>
                    <asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
                    <asp:ListItem Value="Miss">Miss</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 57px">&nbsp;
            </td>
        </tr>

        <tr>
            <td class="style3">FullName</td>
            <td colspan="3">
                <asp:TextBox ID="txtFullName" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3"></td>
            <td colspan="3">
                <asp:CheckBox ID="chkIsFounder" runat="server" Text="Is Founder?" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:CheckBox ID="chkIsManagement" runat="server" Text="Is Management?" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:CheckBox ID="chkIsBoardMember" runat="server" Text="Is Board Member?" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">Job Title</td>
            <td colspan="3">
                <asp:TextBox ID="txtJobTitle" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:Image ID="Image1" Width="20%" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">Short Bio</td>
            <td colspan="3">
                <asp:TextBox ID="txtShortBio" TextMode="MultiLine"  Width="50%" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">Bio</td>
            <td colspan="3">
                <CKEditor:CKEditorControl ID="txtBody" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td>
                <asp:CheckBox ID="chkIsActive" Text="is Active" runat="server" />
            </td>
            <td style="width: 57px">&nbsp;</td>
            <td class="style5">&nbsp;</td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save Member" OnClick="BtnCommand_Click" />
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
