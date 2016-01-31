using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_MaintainCarProductModels : BaseControl
{
    string cid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BuildControls();
    }

     
    protected void BtnEditCommand_Click(object sender, GridViewCommandEventArgs e)
    {
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];

            Session["CAR_SELECTED"] = cid;
            //List<ModelSpec> ms = DataService.Provider.GetModelSpecs2(Batch);
            //if (ms != null)
            //{
            //    lblEditID.Text = ms.Id.ToString();
            //    txtEditModel.Text = ms.Model;
            //    txtEdditOtherParameter.Text = ms.OtherParameters;
            //    txtEditComfort.Text = ms.Comfort;
            //    txtEditDoors.Text = ms.Doors;
            //    txtEditEngine.Text = ms.Engine;
            //    txtEditKeyType.Text = ms.KeyType;
            //    txtEditSafety.Text = ms.Safety;
            //    txtEditTransmission.Text = ms.Transmission;
            //    txtEditYear.Text = ms.Year;
            //    txtFuelUsage.Text = ms.FuelUsage;
            //    txtNoOfSeat.Text = ms.NoofSeat;
            //    pnlAddMSForm.Visible = false;
            //    pnlEditMsForm.Visible = true;

            //}
        }
    }


  
    private void BuildControls()
    {
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
            Session["CAR_SELECTED"] = cid;
            grdModelSpec.DataSource = DataService.Provider.GetAllModelSpecsByCarProductId(int.Parse(cid));
            grdModelSpec.DataBind();
        }
    }


    protected void HyperLink1_Click(object sender, EventArgs e)
    {
        if (Session["CAR_SELECTED"] != null)
        {
            Response.Redirect(Util.AdminUrl + "add-car-model-per-car&cid=" + Session["CAR_SELECTED"].ToString());
        }
    }
}