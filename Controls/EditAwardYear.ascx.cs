using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditAwardYear : BaseControl
{
    string yrid = ""; string action = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["yrid"] != null)
        {
                yrid = Request.Params["yrid"];
        }
        if (Page.IsPostBack == false)
        {
            if (yrid != "")
            {
                AwardYear dnd = DataService.Provider.GetAwardYearByYearId(int.Parse(yrid));
                lblYrId.Text = dnd.Id.ToString();
                txtYear.Text = dnd.AYear.ToString();
            }
        }
    }
    protected void BtnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect(Util.AdminUrl + "award", true);
    }
    protected void BtnSave_Click(object sender, EventArgs e)
    {
        int result = -1;
        try
        {
            if (Request.Params["yrid"] != null)
            {
                    yrid = Request.Params["yrid"];
                    AwardYear aston = new AwardYear();
                    aston.Id = int.Parse(yrid);
                    aston.AYear = int.Parse(txtYear.Text);
                    result = DataService.Provider.UpdateAwardYear(aston);
               
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "award", true);
        }
    }
}