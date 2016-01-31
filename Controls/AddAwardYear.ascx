<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddAwardYear.ascx.cs" Inherits="Controls_AddAwardYear" %>
<table style="width:100%">
    <tr>
        <td style="text-align: right">Year</td>
         <td>
             <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            <asp:Button ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
        </td>
         <td>
             <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" />
        </td>
    </tr>
</table>
