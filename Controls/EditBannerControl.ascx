<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditBannerControl.ascx.cs" Inherits="Controls_EditBannerControl" %>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<table style="width: 100%;">
    <tr>
        <td style="text-align: right"><b>Id</b></td>
        <td>
            <asp:Label ID="lblId" runat="server"></asp:Label>
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="text-align: right"><b>Title</b></td>
        <td>
            <asp:TextBox ID="txtBannerTitle" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><b>Description</b></td>
        <td><CKEditor:CKEditorControl ID="txtDescription" runat="server"></CKEditor:CKEditorControl></td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><b></b></td>
        <td>
            <asp:Image ID="Image1" Width="50%" runat="server" />
        &nbsp;<strong>*Note</strong> Size(859x320)</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><b>Banner Image</b></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;&nbsp;&nbsp;
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><b>Object Type</b></td>
        <td>
            <asp:DropDownList ID="ddlObjectType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [OODTypes] ORDER BY [Name]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right"><b>Link</b></td>
        <td>
            <asp:TextBox ID="txtLink" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkActive" Text="Active?" runat="server" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:LinkButton ID="lnkBtnSaveBanner" runat="server" OnClick="lnkBtnSaveBanner_Click">Save Banner</asp:LinkButton>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
