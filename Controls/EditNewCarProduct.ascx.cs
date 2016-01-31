using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditNewCarProduct : BaseControl
{
    string cid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCategory.DataSource = DataService.Provider.GetAllCarCategories();
            ddlCategory.DataBind();
            ddlSubCategory.DataSource = DataService.Provider.GetAllSubCategory();
            ddlSubCategory.DataBind();
            
            if (Request.Params["cid"] != null)
            {
                cid = Request.Params["cid"];
                CarProduct carProduct = DataService.Provider.GetCarProductByID(int.Parse(cid));
                if (carProduct != null)
                {
                    lblId.Text = carProduct.Id.ToString();
                    txtCarName.Text = carProduct.Name;
                    txtFeatures.Text = carProduct.Features;
                    ddlCategory.SelectedValue = carProduct.CatID.ToString();
                    ddlSubCategory.SelectedValue = carProduct.SubCatID.ToString();
                    chkActive.Checked = (bool)carProduct.Active;
                }
            }
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        CarProduct carproduct = new CarProduct();
        carproduct.Id = int.Parse(lblId.Text.Trim());
        carproduct.Active = (bool)chkActive.Checked;
        carproduct.CatID = int.Parse(ddlCategory.SelectedValue.Trim());
        carproduct.CreateDate = DateTime.Now;
        carproduct.CreateBy = 1;
        carproduct.Features = txtFeatures.Text;
        carproduct.Name = txtCarName.Text;
        carproduct.SubCatID = int.Parse(ddlSubCategory.SelectedValue.Trim());
        int result = DataService.Provider.SaveCarProduct(carproduct);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "car-list", true);
        }
    }

    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlCategory.SelectedValue != "-Select-")
        {
            ddlSubCategory.Items.Clear();
            ddlSubCategory.DataSource = DataService.Provider.GetAllSubCategoryByCatID(int.Parse(ddlCategory.SelectedValue));
            ddlSubCategory.DataBind();
        }
    }
}