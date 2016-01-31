using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddSubCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        SubCarCategory loc = new SubCarCategory();
        loc.SubCartName = txtName.Text;
        loc.CatID = int.Parse(ddlCategory.SelectedValue);
        loc.Active = chkActive.Checked;
        int result = DataService.Provider.AddSubCarCategory(loc);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "sub-category-list", true);
        }
    }
}