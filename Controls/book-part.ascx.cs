using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_book_part : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PartBooking pb = new PartBooking();
            Session["PARTBOOKING"] = pb;
        }
    }
    protected void ddlcompanyType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcompanyType.SelectedValue != "--select--")
        {
            string type = ddlcompanyType.SelectedValue;
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

    protected void BtnOne_Click(object sender, EventArgs e)
    {
        if (ddlcompanyType.SelectedValue.Trim() == "--Select--")
        {
            msgBox1.alert("Kindly select customer type!");
            ddlcompanyType.Focus();
            return;
        }
        else
        {
            if (ddlcompanyType.SelectedValue == "Individual")
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

            if (ddlcompanyType.SelectedValue == "Corporate")
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

        PartBooking pb = (PartBooking)Session["PARTBOOKING"];
        pb.CompanyType = ddlcompanyType.SelectedValue;
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
        Session["PARTBOOKING"] = pb;
        pnlOne.Visible = false;
        pnlTwo.Visible = true;
    }


    protected void BtnTwo_Click(object sender, EventArgs e)
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

        if (PartCategory.SelectedValue == "--Select--")
        {
            msgBox1.alert("Kindly enter your  Part Category");
            PartCategory.Focus();
            return;
        }

        if (PartsName.Text == "")
        {
            msgBox1.alert("Kindly enter your  Parts Name");
            PartsName.Focus();
            return;
        }

        PartBooking pb = (PartBooking)Session["PARTBOOKING"];        
        pb.VehicleModel = VehicleModel.Text.Trim();
        pb.RegistrationNo = RegistrationNo.Text.Trim();
        pb.EngineNo = EngineNo.Text.Trim();
        pb.Odometer = "";// Odometer.Text.Trim();
        pb.ChasisNo = "";//ChasisNo.Text.Trim();
        pb.PartCategory = PartCategory.SelectedValue;
        pb.PartsName = PartsName.Text.Trim();
        Session["PARTBOOKING"] = pb;
        pnlTwo.Visible = false;
        pnlThree.Visible = true;
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        if (PickUpDate.Text == "")
        {
            msgBox1.alert("Kindly enter your Date / Time");
            PickUpDate.Focus();
            return;
        }

        if (LocationType.SelectedValue == "--Select--")
        {
            msgBox1.alert("Kindly select your location");
            LocationType.Focus();
            return;
        }

        if (ElizadeLocation.SelectedValue == "--Select--")
        {
            msgBox1.alert("Kindly select Elizade location");
            ElizadeLocation.Focus();
            return;
        }


        Random rd = new Random();
        int Next = rd.Next(1, 9000);
        PartBooking pb = (PartBooking)Session["PARTBOOKING"];
        pb.PickUpDate = DateTime.Parse(PickUpDate.Text.Trim());
        pb.LocationType = LocationType.SelectedValue;
        pb.CreateDate = DateTime.Now;
        pb.EmailNotify = (chkNotify.Checked) ? "Y" : "N";
        pb.VehicleYear = int.Parse(VehicleYear.SelectedValue.Trim());
        if (pb.LocationType == "ElizadeLocation")
        {
            pb.ElizadeLocation = ElizadeLocation.SelectedValue;
            pb.ElizadeAddress = txtElizadeAddress.Text.Trim();
        }
        else if (pb.LocationType == "CustomerAddress")
        {
            pb.CustomerAddress = CustomerAddress.Text;
        }
        else { }
        pb.TranCode = (Next * 5000).ToString();
        Session["PARTBOOKING"] = pb;
        pb.Incomplete = false;
        int result = DataService.Provider.AddPartBooking(pb);
        if (result > 0)
        {
            Response.Redirect(Util.BaseSiteUrl + "p.aspx?p=confirm-part-booking", true);
        }
    }

    protected void LocationType_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (LocationType.SelectedValue != "-Select-") 
        {
            string type = LocationType.SelectedValue;
            if (type == "ElizadeLocation")
            {
                pnlELIAddress.Visible = true;
                pnlCAddress.Visible = false;
            }

            if (type == "CustomerAddress")
            {
                pnlELIAddress.Visible = false;
                pnlCAddress.Visible = true;
            }
        }
    }

    protected void ElizadeLocation_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ElizadeLocation.SelectedValue != "-Select-") {
            Location loc = DataService.Provider.GetLocationByName(ElizadeLocation.SelectedValue);
            if (loc != null) {
                txtElizadeAddress.Text = loc.Address;
            }
        }
    }
}