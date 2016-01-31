using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditLocation : BaseControl
{
    string nid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["lid"] != null)
        {
            nid = Request.Params["lid"];
            Location news = DataService.Provider.GetLocationById(int.Parse(nid));
            if (news != null)
            {
                lblId.Text = news.ID.ToString();
                txtAddress.Text = news.Address;
                txtGeneralEnquiry.Text = news.GeneralEnquiryEmail;
                txtName.Text = news.Name;
                txtPartsEmail.Text = news.PartsEmail;
                txtPartsPhone.Text = news.PartsPhone;
                txtSalesEmail.Text = news.SalesEmail;
                txtSalesPhone.Text = news.SalesPhone;
                txtServiceEmail.Text = news.ServiceEmail;
                txtServicePhone.Text = news.ServicePhone;
                ddlLocationType.SelectedValue = news.LocType;
                txtGeneralEnquiry.Text = news.GeneralEnquiryEmail;
            }
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        Location loc = new Location();
        loc.Address = txtAddress.Text;
        loc.GeneralEnquiryEmail = txtGeneralEnquiry.Text;
        loc.ID = int.Parse(lblId.Text.Trim());
        loc.IsHeadOfice = chkHeadOffice.Checked;
        loc.LocType = ddlLocationType.SelectedValue;
        loc.Name = txtName.Text;
        loc.PartsEmail = txtPartsEmail.Text;
        loc.PartsPhone = txtPartsPhone.Text;
        loc.SalesEmail = txtSalesEmail.Text;
        loc.SalesPhone = txtSalesPhone.Text;
        loc.ServiceEmail = txtServiceEmail.Text;
        loc.ServicePhone = txtServicePhone.Text;
        int result = DataService.Provider.UpdateLocation(loc);
        if (result > 0) {
            Response.Redirect(Util.AdminUrl + "location", true);        
        }
    }
}