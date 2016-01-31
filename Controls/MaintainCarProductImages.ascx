<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MaintainCarProductImages.ascx.cs" Inherits="Controls_MaintainCarProductImages" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<style type="text/css">
    .auto-style1 {
        text-align: right;
    }
</style>
<table class="table" style="width: 100%;">
    <tr>
        <td class="auto-style1"><strong>Menu Image</strong></td>
        <td>120x59  
            <asp:FileUpload ID="FuMenuImage" runat="server" />
            &nbsp;
            <asp:Button ID="BtnMenuImage" runat="server" Text="Save Menu Image" OnClick="BtnMenuImage_Click" />
        </td>
        <td>&nbsp;</td>
        <td style="text-align: right">
            <strong>Detail Head</strong></td>
        <td>1020x360
            <asp:FileUpload ID="FUDetailImage" runat="server" />
            &nbsp;<asp:Button ID="BtnDetailHead" runat="server" Text="Save Detail Head" OnClick="BtnDetailHead_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="2">
            <asp:Image ID="Image1"  Width="25%" runat="server" />
        </td>
        <td>&nbsp;</td>
        <td colspan="2">
            <asp:Image ID="Image2" Width="25%" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1"><strong>Exterior Images</strong></td>
        <td>568x404 
            <asp:FileUpload ID="FUExternalImages" AllowMultiple="true" runat="server" />
            &nbsp;<asp:Button ID="BtnCommand" runat="server" Text="Save Exterior Images" OnClick="BtnCommand_Click" />
        </td>
        <td>&nbsp;</td>
        <td style="text-align: right">
            <strong>Interior Images</strong></td>
        <td>568x404   
            <asp:FileUpload ID="FUInternalImages" AllowMultiple="true" runat="server" />
            &nbsp;<asp:Button ID="BtnSaveInteriorImages" runat="server" Text="Save Interior Images" OnClick="BtnSaveInteriorImages_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="2" rowspan="2">
            <asp:Repeater ID="rptExterior" OnItemCreated="rptExterior_ItemCreated" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image3" ImageUrl='<%# "/ProductImages/" + Eval("PhotoFilename") %>'  Width="20%" runat="server" />
                </ItemTemplate>
            </asp:Repeater>
        </td>
        <td>&nbsp;</td>
        <td colspan="2" rowspan="2">
            <asp:Repeater ID="rptInterior" OnItemCreated="rptInterior_ItemCreated" runat="server">
                <ItemTemplate>
                   <asp:Image ID="Image3" ImageUrl='<%# "/ProductImages/" + Eval("PhotoFilename") %>'  Width="20%" runat="server" />
                </ItemTemplate>
            </asp:Repeater>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
