using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ConfirmServiceBooking : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["SERVICEBOOKING"] != null)
        {
            ShowMessage("Your information has been successfully received, Elizade representative will contact you shortly");
            ServiceBooking pb = (ServiceBooking)Session["SERVICEBOOKING"];
            if (pb.CompanyType == "Individual") {
                lblCompany.Visible = false;
                Label1.Visible = false;
            }
            lblName.Text = pb.FullName;
            lblTranCode.Text = pb.TranCode;
            lblAppointmentDate.Text = pb.DropOffDate.ToString();
            lblBookingType.Text = pb.ServiceRepairType;
            lblCompany.Text = pb.NameOfCompany;
            lblDateSubmited.Text = pb.CreateDate.ToString();
            lblDropOffLocation.Text = pb.ElizadeAddress;
            lblEmail.Text = pb.Email;
            lblEngineNo.Text = pb.EngineNo;
            lblOdometer.Text = pb.Odometer;
            lblPhoneNo.Text = pb.PhoneNo;
            lblRegistrationNo.Text = pb.RegistrationNo;
            lblServiceType.Text = pb.ServiceRepairType;
            lblVehicleModel.Text = pb.VehicleModel;
            lblVehicleYear.Text = pb.VehicleYear.ToString();

        }
    }
}