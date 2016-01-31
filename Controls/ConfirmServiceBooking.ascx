<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ConfirmServiceBooking.ascx.cs" Inherits="Controls_ConfirmServiceBooking" %>
<style type="text/css">
    .auto-style1 {
        color: #FF0000;
    }
    .auto-style2 {
        color: #FF0000;
        font-weight: bold;
    }
</style>
<div class="banner-shadow">
</div>
<div class="back-shadow">
    <img src="images/Toyota/shadow.png" width="100%" style="padding: 0 10px;">
</div>


<div class="" id="message" runat="server" visible="false">
</div>
<table class="table" style="width: 50%">
    <tr>
        <td class="auto-style2">Transaction&nbsp; Code</td>
        <td>
            <asp:Label ID="lblTranCode" runat="server" style="color: #FF0000"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Name</b></td>
        <td>
            <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Company"></asp:Label></td>
        <td>
            <asp:Label ID="lblCompany" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Email</b></td>
        <td>
            <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Phone No</b></td>
        <td>
            <asp:Label ID="lblPhoneNo" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Booking Type</b></td>
        <td>
            <asp:Label ID="lblBookingType" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Vehicle Model</b></td>
        <td>
            <asp:Label ID="lblVehicleModel" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Vehicle Year</b></td>
        <td>
            <asp:Label ID="lblVehicleYear" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Registration No</b></td>
        <td>
            <asp:Label ID="lblRegistrationNo" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Engine No</b></td>
        <td>
            <asp:Label ID="lblEngineNo" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Odometer</b></td>
        <td>
            <asp:Label ID="lblOdometer" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Service Type</b></td>
        <td>
            <asp:Label ID="lblServiceType" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Appointment date</b></td>
        <td>
            <asp:Label ID="lblAppointmentDate" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><strong>Drop Off Location</strong></td>
        <td>
            <asp:Label ID="lblDropOffLocation" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td><b>Date Submitted </b></td>
        <td>
            <asp:Label ID="lblDateSubmited" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1" style="font-style: italic" colspan="2">Please print this detail and bring it along to our service center.</td>
    </tr>
</table>
