using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditSubCategory : System.Web.UI.UserControl
{
    string nid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["vcid"] != null)
        {
            nid = Request.Params["vcid"];
            SubCarCategory news = DataService.Provider.GetSubCarCategoryById(int.Parse(nid));
            if (news != null)
            {
                lblId.Text = news.RecId.ToString();
                txtName.Text = news.SubCartName;
                ddlCategory.SelectedValue = news.CatID.ToString();
                chkActive.Checked = (bool)news.Active;
            }
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        SubCarCategory loc = new SubCarCategory();
        loc.RecId = int.Parse(lblId.Text.Trim());
        loc.Active = chkActive.Checked;
        loc.SubCartName = txtName.Text;
        loc.CatID = int.Parse(ddlCategory.SelectedValue);
        int result = DataService.Provider.UpdateSubCarCategory(loc);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "sub-category-list", true);
        }
    }
}