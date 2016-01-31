using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ConfirmPartBooking : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["PARTBOOKING"] != null) {
            ShowMessage("Your information has been successfully received, Elizade representative will contact you shortly");
            PartBooking pb = (PartBooking)Session["PARTBOOKING"];
            if (pb.CompanyType == "Individual")
            {
                lblCompany.Visible = false;
                Label1.Visible = false;
            }
            lblName.Text = pb.FullName;
            lblTranCode.Text = pb.TranCode;
            lblAppointmentDate.Text = pb.PickUpDate.ToString();
            lblBookingType.Text = pb.PartsName;
            lblCompany.Text = pb.NameOfCompany;
            lblDateSubmited.Text = pb.CreateDate.ToString();
            lblDropOffLocation.Text = pb.ElizadeAddress;
            lblEmail.Text = pb.Email;
            lblEngineNo.Text = pb.EngineNo;
            lblPhoneNo.Text = pb.PhoneNo;
            lblRegistrationNo.Text = pb.RegistrationNo;
            lblServiceType.Text = pb.PartCategory;
            lblVehicleModel.Text = pb.VehicleModel;
            lblVehicleYear.Text = pb.VehicleYear.ToString(); ;
        }
    }
}