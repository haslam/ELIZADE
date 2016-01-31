<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ModuleControl.ascx.cs"
    Inherits="Controls_ModuleControl" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<table width="100%">
    <tbody>
        <tr>
            <td style="width: 20%; height: 26px;">
                <b>Module ID</b></td>
            <td style="width: 80%">
                <asp:TextBox ID="txtModuleID" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 20%">
                <b>Module Name</b></td>
            <td style="width: 80%">
                <asp:TextBox ID="txtModuleName" runat="server" Width="70%"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 20%">
            </td>
            <td style="width: 80%">
                <asp:Image ID="imagepath" runat="server" Height="100" Width="150" /></td>
        </tr>
        <tr>
            <td style="width: 20%">
                <b>Module Image</b></td>
            <td style="width: 80%">
                <asp:FileUpload ID="moduleImage" runat="server" Width="396px" /></td>
        </tr>
        <tr>
            <td style="width: 20%">
                <b>Module Description</b></td>
            <td style="width: 80%">
                <FTB:FreeTextBox ID="txtModuleDescription" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 21px; width: 20%;">
            </td>
            <td style="width: 80%">
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Add Module Info" OnClick="BtnCommand_Click" />
            </td>
        </tr>
    </tbody>
</table>
