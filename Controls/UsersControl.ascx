<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UsersControl.ascx.cs"
    Inherits="Controls_UsersControl" %>
<table width="100%">
    <tbody>
        <tr>
            <td style="height: 26px">
                <b>
                UserName</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtUserName" runat="server" Width="328px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 26px">
                <b>Title</b></td>
            <td style="height: 26px">
                <asp:DropDownList ID="ddlTitle" runat="server" Width="327px">
                    <asp:ListItem>Miss</asp:ListItem>
                    <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                    <asp:ListItem>Dr.</asp:ListItem>
                    <asp:ListItem>Ms</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="height: 26px">
                <b>FirstName</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtFirstName" runat="server" Width="330px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="height: 26px">
                <b>LastName</b></td>
            <td style="height: 26px">
                <asp:TextBox ID="txtLastName" runat="server" Width="329px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <b>Job Title</b></td>
            <td>
                <asp:TextBox ID="txtJobTitle" runat="server" Width="460px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <b>Password</b></td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="259px" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <b>
                Retype Password</b></td>
            <td>
                <asp:TextBox ID="txtrePassword" runat="server" TextMode="Password" Width="260px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <b>Theme</b></td>
            <td>
                <asp:DropDownList ID="ddlTheme" runat="server" Width="257px">
                    <asp:ListItem>Default</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <asp:CheckBox ID="chkActive" runat="server" Text="Active" Width="146px" /></td>
        </tr>
        <tr>
            <td style="height: 21px">
            </td>
            <td style="height: 21px">
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Add User" OnClick="BtnCommand_Click" />
            </td>
        </tr>
    </tbody>
</table>
