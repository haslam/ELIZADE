<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EditLocation.ascx.cs" Inherits="Controls_EditLocation" %>
<style type="text/css">
    .auto-style1 {
        font-weight: bold;
        text-align: right;
    }
</style>
<div id="message" class="message" runat="server" visible="false" enableviewstate="false">
</div>
<cc2:msgBox ID="msgBox1" runat="server" Style="text-align: center" />
<table style="width: 100%;">
    <tbody>
        <tr>
            <td class="auto-style1">Id</td>
            <td colspan="3">
                <asp:Label ID="lblId" runat="server"></asp:Label>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Name</td>
            <td colspan="3">
                <asp:TextBox ID="txtName" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Location Type</td>
            <td colspan="3">
                <asp:DropDownList ID="ddlLocationType" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" SelectCommand="SELECT * FROM [LocTypes]"></asp:SqlDataSource>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Address</td>
            <td colspan="3">
                <asp:TextBox ID="txtAddress" TextMode="MultiLine" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Sales Phone</td>
            <td colspan="3">
                <asp:TextBox ID="txtSalesPhone" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Sales Email</td>
            <td colspan="3">
                <asp:TextBox ID="txtSalesEmail" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Service Phone</td>
            <td colspan="3">
                <asp:TextBox ID="txtServicePhone" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Service Email</td>
            <td colspan="3">
                <asp:TextBox ID="txtServiceEmail" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Parts Phone</td>
            <td colspan="3">
                <asp:TextBox ID="txtPartsPhone" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Parts Email</td>
            <td colspan="3">
                <asp:TextBox ID="txtPartsEmail" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">General Enquiry Email</td>
            <td colspan="3">
                <asp:TextBox ID="txtGeneralEnquiry" Width="80%" runat="server"></asp:TextBox>
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;</td>
            <td colspan="3">
                <asp:CheckBox ID="chkHeadOffice" Text="Head Office?" runat="server" />
            </td>
            <td style="width: 57px">&nbsp;</td>
        </tr>
        <tr>
            <td class="style3">&nbsp;
            </td>
            <td>
                <asp:LinkButton ID="BtnCommand" runat="server" Text="Save Location" OnClick="BtnCommand_Click" />
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
