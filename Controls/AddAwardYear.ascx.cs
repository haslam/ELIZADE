using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddAwardYear : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(Util.AdminUrl + "award", true);
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        AwardYear ay = new AwardYear();
        ay.AYear = int.Parse(txtYear.Text.Trim());
        ay.Id = 0;
        int result = DataService.Provider.AddAwardYear(ay);
        if (result > 0) {
            Response.Redirect(Util.AdminUrl + "award", true);
        }
    }
}