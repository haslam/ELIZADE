using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddLocation : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        Location loc = new Location();
        loc.Address = txtAddress.Text;
        loc.GeneralEnquiryEmail = txtGeneralEnquiry.Text;
        loc.IsHeadOfice = chkHeadOffice.Checked;
        loc.LocType = ddlLocationType.SelectedValue;
        loc.Name = txtName.Text;
        loc.PartsEmail = txtPartsEmail.Text;
        loc.PartsPhone = txtPartsPhone.Text;
        loc.SalesEmail = txtSalesEmail.Text;
        loc.SalesPhone = txtSalesPhone.Text;
        loc.ServiceEmail = txtServiceEmail.Text;
        loc.ServicePhone = txtServicePhone.Text;
        int result = DataService.Provider.AddLocation(loc);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "location", true);
        }
    }
}