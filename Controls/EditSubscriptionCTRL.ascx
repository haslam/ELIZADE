<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditSubscriptionCTRL.ascx.cs" Inherits="Controls_EditSubscriptionCTRL" %>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<table style="width: 100%;">
    <tbody>
        <tr>
            <td style="width: 211px">
                <b>Id</b></td>
            <td>
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 211px">
                <b>Name</b></td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td style="width: 57px"></td>
        </tr>
        <tr>
            <td style="width: 211px">
                <b>Email</b></td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="70%"></asp:TextBox></td>
            <td style="width: 57px"></td>
        </tr>
        <tr>
            <td style="height: 21px; width: 211px;"></td>
            <td style="height: 21px">
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save" OnClick="BtnCommand_Click" />
                &nbsp;
                </td>
            <td style="width: 57px; height: 21px"></td>
        </tr>
    </tbody>
</table>
