using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditVehicleCategory : BaseControl
{
    string nid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["vcid"] != null)
        {
            nid = Request.Params["vcid"];
            CarCategory news = DataService.Provider.GetCarCategoryById(int.Parse(nid));
            if (news != null)
            {
                lblId.Text = news.Id.ToString();
                txtName.Text = news.Name;
                chkActive.Checked = (bool)news.Active;
            }
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        CarCategory loc = new CarCategory();
        loc.Id = int.Parse(lblId.Text.Trim());
        loc.Active = chkActive.Checked;
        loc.Name = txtName.Text;
        int result = DataService.Provider.UpdateCarCategory(loc);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "manage-vehicle", true);
        }
    }
}