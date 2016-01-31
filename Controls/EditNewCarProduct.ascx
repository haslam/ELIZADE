<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditNewCarProduct.ascx.cs" Inherits="Controls_EditNewCarProduct" %>
<table class="table" style="width:100%">
    <tr>
        <td style="text-align: right">
            Car Product Id</td>
        <td>
            <asp:Label ID="lblId" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: right">
            Name
        </td>
        <td>
            <asp:TextBox ID="txtCarName" runat="server"></asp:TextBox>
        </td>
        <td></td>
    </tr>
    <tr>
        <td style="text-align: right">
            Features</td>
        <td>
            <CKEditor:CKEditorControl ID="txtFeatures" runat="server" >

            </CKEditor:CKEditorControl></td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">Category</td>
        <td>
            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
            </asp:DropDownList>
         </td>
        <td></td>
    </tr>
     <tr>
        <td style="text-align: right">Sub-Category</td>
        <td>
            <asp:DropDownList ID="ddlSubCategory" runat="server" DataTextField="SubCartName" DataValueField="RecId">
            </asp:DropDownList>
         </td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkActive" runat="server" Text="Active" />
         </td>
        <td>&nbsp;</td>
    </tr>
     <tr>
        <td style="text-align: right">&nbsp;</td>
        <td>
            <asp:Button ID="BtnCommand" runat="server" Text="Save Car Product" OnClick="BtnCommand_Click" />
         </td>
        <td>&nbsp;</td>
    </tr>
</table>