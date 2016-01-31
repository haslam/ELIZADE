using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddNewCarProduct : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        CarProduct carproduct = new CarProduct();
        carproduct.Active = chkActive.Checked;
        carproduct.CatID = int.Parse(ddlCategory.SelectedValue.Trim());
        carproduct.CreateDate = DateTime.Now;
        carproduct.CreateBy = 1;
        carproduct.Features = txtFeatures.Text;
        carproduct.Name = txtCarName.Text;
        carproduct.SubCatID = int.Parse(ddlSubCategory.SelectedValue.Trim());
        int result = DataService.Provider.AddCarProduct(carproduct);
        if (result > 0) {
            Response.Redirect(Util.AdminUrl + "car-list", true);
        }
    }
}