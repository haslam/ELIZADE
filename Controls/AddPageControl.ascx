<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddPageControl.ascx.cs" Inherits="Controls_AddPageControl" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<table style="width: 100%;">
    <tbody>
         <tr>
            <td class="style3">
                <strong>Title</strong>
            </td>
            <td class="style1" colspan="4">
                <CKEditor:CKEditorControl ID="txtTitle" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td style="width: 57px">&nbsp;
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700; width: 15%"><%--Pager Id
            --%></td>
            <td style="width: 25%">
                <strong>
                <asp:CheckBox ID="chkIsHome" runat="server" Text="Is Home?" />
                </strong>
            </td>
            <td colspan="2">&nbsp;
            &nbsp;
                <asp:Label ID="lblPageId" runat="server"></asp:Label>
            </td>
            <td style="width: 25%">&nbsp;
            </td>
            <td style="width: 10%">&nbsp;
            </td>
        </tr>
       
        <tr>
            <td class="style3">
                <strong>Nav Title</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtNavTitle" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Slug</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtSlug"  Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Uri</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtUri"  Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Parent</strong></td>
            <td colspan="4">
                <asp:DropDownList ID="ddlParent" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSource3" DataTextField="nav_title" DataValueField="page_id">
                    <asp:ListItem Value="0">None</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [page_id], [nav_title] FROM [Pages] WHERE ([Pagetype] = @Pagetype)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="1" Name="Pagetype" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="4">
                <asp:CheckBox ID="chkIsInMainNav" runat="server" Text="Is in main navigation?" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="4">
                <asp:CheckBox ID="chkIsInFooterNav" runat="server" Text="Is in footer navigation?" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="4">
                <asp:CheckBox ID="chkIsInBottomNav" runat="server" Text="Is in bottom navigation" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Meta Keywords</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtMetaKeywords" Width="80%"  runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Meta Description</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtMetaDescription" Width="80%"  runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <strong>Meta Title</strong></td>
            <td colspan="4">
                <asp:TextBox ID="txtMetaTitle" Width="80%"  runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3"><strong>Body</strong></td>
            <td colspan="4">
                <CKEditor:CKEditorControl ID="txtBody" runat="server"></CKEditor:CKEditorControl>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="style3"><strong>Page Status</strong></td>
            <td colspan="4">
                <asp:DropDownList ID="ddlPageStatus" DataValueField="Name" DataTextField="Name" runat="server" DataSourceID="SqlDataSource8">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT [Name] FROM [PageStatus] ORDER BY [Name]"></asp:SqlDataSource>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save Page" OnClick="BtnCommand_Click" />
            </td>
            <td style="width: 57px">&nbsp;</td>
            <td class="style5" colspan="2">&nbsp;
                &nbsp;
            </td>
            <td style="width: 57px">&nbsp;
            </td>
        </tr>
    </tbody>
</table>
<hr />
