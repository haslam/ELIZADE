using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_book_service : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ServiceBooking sb = new ServiceBooking();
            Session["SERVICEBOOKING"] = sb;
        }
    }

    protected void customertype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcustomertype.SelectedValue != "--select--")
        {
            string type = ddlcustomertype.SelectedValue;
            if (type == "Individual")
            {
                personPanel.Visible = true;
                companyPanel.Visible = false;
            }

            if (type == "Corporate")
            {
                personPanel.Visible = false;
                companyPanel.Visible = true;
            }
        }
    }

    protected void plnBtnOne_Click(object sender, EventArgs e)
    {
        if (ddlcustomertype.SelectedValue.Trim() == "--Select--")
        {
            msgBox1.alert("Kindly select customer type!");
            ddlcustomertype.Focus();
            return;
        }
        else
        {
            if (ddlcustomertype.SelectedValue == "Individual")
            {
                if (Fullname.Text == "")
                {
                    msgBox1.alert("Kindly enter your name");
                    Fullname.Focus();
                    return;
                }

                if (emailtxt.Text == "")
                {
                    msgBox1.alert("Kindly enter your email");
                    emailtxt.Focus();
                    return;
                }

                if (PhoneNo.Text == "")
                {
                    msgBox1.alert("Kindly enter your PhoneNo");
                    PhoneNo.Focus();
                    return;
                }           

            }

            if (ddlcustomertype.SelectedValue == "Corporate")
            {
                if (NameOfCompany.Text == "")
                {
                    msgBox1.alert("Kindly enter name of company");
                    NameOfCompany.Focus();
                    return;
                }

                if (ContactPerson.Text == "")
                {
                    msgBox1.alert("Kindly enter name of contact person");
                    ContactPerson.Focus();
                    return;
                }

                if (emailtxt.Text == "")
                {
                    msgBox1.alert("Kindly enter your email");
                    emailtxt.Focus();
                    return;
                }

                if (PhoneNo.Text == "")
                {
                    msgBox1.alert("Kindly enter your PhoneNo");
                    PhoneNo.Focus();
                    return;
                }
            }
        }

        

        ServiceBooking pb = (ServiceBooking)Session["SERVICEBOOKING"];
        pb.CompanyType = ddlcustomertype.SelectedValue;
        if (pb.CompanyType == "Individual")
        {
            pb.FullName = Fullname.Text.Trim();
        }
        else if (pb.CompanyType == "Corporate")
        {
            pb.ContactPerson = ContactPerson.Text.Trim();
            pb.NameOfCompany = NameOfCompany.Text.Trim();
        }
        else { }
        pb.Email = emailtxt.Text.Trim();
        pb.PhoneNo = PhoneNo.Text.Trim();
        Session["SERVICEBOOKING"] = pb;
        pnlOne.Visible = false;
        pnlTwo.Visible = true;
        //pnlThree.Visible = true;
    }

    protected void pnlBtnTwo_Click(object sender, EventArgs e)
    {
        if (VehicleModel.Text == "")
        {
            msgBox1.alert("Kindly enter your Vehicle Model");
            VehicleModel.Focus();
            return;
        }

        if (RegistrationNo.Text == "")
        {
            msgBox1.alert("Kindly enter your Vehicle Registration No.");
            RegistrationNo.Focus();
            return;
        }

        if (EngineNo.Text == "")
        {
            msgBox1.alert("Kindly enter your Vehicle Engine No.");
            EngineNo.Focus();
            return;
        }

        if (ChasisNo.Text == "")
        {
            msgBox1.alert("Kindly enter your Chassis No.");
            ChasisNo.Focus();
            return;
        }

        if (Odometer.Text == "")
        {
            msgBox1.alert("Kindly enter your  Odometer (Current Mileage)");
            Odometer.Focus();
            return;
        }

        ServiceBooking pb = (ServiceBooking)Session["SERVICEBOOKING"];
        pb.VehicleModel = VehicleModel.Text.Trim();
        pb.RegistrationNo = RegistrationNo.Text.Trim();
        pb.EngineNo = EngineNo.Text.Trim();
        pb.Odometer = Odometer.Text.Trim();
        pb.ChasisNo = ChasisNo.Text.Trim();
        Session["SERVICEBOOKING"] = pb;
        pnlTwo.Visible = false;
        pnlThree.Visible = true;
        pnlFour.Visible = false;
        pnlOne.Visible = false;
    }

    protected void btnThree_Click(object sender, EventArgs e)
    {
        if (ServiceRepairType.SelectedIndex == -1)
        {
            msgBox1.alert("Kindly select your  service type!");
            ServiceRepairType.Focus();
            return;
        }

        string YrStr = "";
        for (int i = 0; i < ServiceRepairType.Items.Count; i++)
        {
            if (ServiceRepairType.Items[i].Selected)
            {
                YrStr += ServiceRepairType.Items[i].Value + ",";
            }
        }
        ServiceBooking pb = (ServiceBooking)Session["SERVICEBOOKING"];
        pb.ServiceRepairType = YrStr.Remove(YrStr.Length - 1, 1);
        pb.OtherServiceRepair = OtherServiceRepair.Text;


        Session["SERVICEBOOKING"] = pb;
        pnlThree.Visible = false;
        pnlFour.Visible = true;
        pnlOne.Visible = false;
        pnlThree.Visible = false;
    }


    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        if (DropOffDate.Text == "")
        {
            msgBox1.alert("Kindly enter your Date / Time");
            DropOffDate.Focus();
            return;
        }

        if (LocationType.SelectedValue == "--Select--")
        {
            msgBox1.alert("Kindly select your location");
            LocationType.Focus();
            return;
        }

        if (ddlElizadeLocation.SelectedValue == "--Select--")
        {
            msgBox1.alert("Kindly select Elizade location");
            ddlElizadeLocation.Focus();
            return;
        }

        ServiceBooking pb = (ServiceBooking)Session["SERVICEBOOKING"];
        pb.ElizadeLocation = ddlElizadeLocation.SelectedValue;
        Random rd = new Random();
        int Next = rd.Next(1, 9000);
        pb.DropOffDate = DateTime.Parse(DropOffDate.Text.Trim());
        pb.LocationType = LocationType.SelectedValue;
        if (pb.LocationType == "ElizadeLocation")
        {
            pb.ElizadeLocation = ddlElizadeLocation.SelectedValue;
            pb.ElizadeAddress = txtElizadeAddress.Text.Trim();
        }
        
        else { }
        pb.TranCode = (Next * 10000).ToString();
        pb.NotifyEmail = (chkNotify.Checked) ? "Y" : "N";
        pb.VehicleYear = int.Parse(VehicleYear.SelectedValue.Trim());
        pb.CreateDate = DateTime.Now;
        Session["SERVICEBOOKING"] = pb;
        pb.Incomplete = false;
        int result = DataService.Provider.AddServiceBooking(pb);
        if (result > 0)
        {
            Response.Redirect(Util.BaseSiteUrl + "p.aspx?p=confirm-service-booking", true);
        }

    }

    protected void LocationType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (LocationType.SelectedValue != "-Select-")
        {
            string type = LocationType.SelectedValue;
            if (type == "ElizadeLocation")
            {
                pnlElizadeAdd.Visible = true;
                pnlCustomer.Visible = false;
            }

            if (type == "CustomerAddress")
            {
                pnlElizadeAdd.Visible = false;
                pnlCustomer.Visible = true;
            }
        }
    }

    protected void ddlElizadeLocation_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlElizadeLocation.SelectedValue != "-Select-")
        {
            Location loc = DataService.Provider.GetLocationByName(ddlElizadeLocation.SelectedValue);
            if (loc != null)
            {
                txtElizadeAddress.Text = loc.Address;
            }
        }
    }
}