using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddCarModelPerCarCTRL : System.Web.UI.UserControl
{
    string cid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["cid"] != null)
        {
            cid = Request.Params["cid"];
        }
    }
    protected void btnAddModelSpec_Click(object sender, EventArgs e)
    {
        if (Session["CAR_SELECTED"] != null)
        {
           
                ModelSpec ms = new ModelSpec();
                ms.Id = 0;
                ms.Model = txtEditModel.Text;
                ms.Doors = txtEditDoor.Text;
                ms.CarProductId = int.Parse(Session["CAR_SELECTED"].ToString());
                ms.BodyStyle = txtEditBodyStyle.Text;
                ms.Brakes = txtEditBrakesFR.Text;
                ms.Convenience = txtEditConvinence.Text;
                ms.CurbWeight = txtEditCubWeight.Text;
                ms.DriveLine = txtEditDriveLine.Text;
                ms.Engine = txtEditEngine.Text;
                ms.EngineCapacity = txtEditEngineCapacity.Text;
                ms.EngineSize = txtEditEngineSize.Text;
                ms.Transmission = txtEditTransmission.Text;
                ms.Year = txtEditYear.Text;
                ms.Entertainment = txtEditEntertainment.Text;
                ms.ExteriorColorOptions = txtEditExteriorColorOption.Text;
                ms.FrontSuspension = txtEditFrontSuspension.Text;
                ms.FuelEfficiencyRating = txtEditFuelEffiRating.Text;
                ms.FuelSystem = txtEditFuelSystem.Text;
                //ms.FueltankCapacity = txtEditFuelTank.Text;
                ms.GrossVehicleWeight = txtEditGrossVehicleWeigth.Text;
                ms.GroundClearance = txtEditGroundClearance.Text;
                ms.InteriorColorOption = txtEditInteriorColorOption.Text;
                ms.KeyFeatures = txtEditKeyFeatures.Text;
                ms.LengthWidthHeight = txtEditLenghtWidthHeight.Text; ;
                ms.LLI = txtEditLightingVI.Text;
                ms.MaxOutput = txtEditMaxOutput.Text;
                ms.MaxTorque = txtEditMaxTorque.Text;
                ms.MinimumTurningRadius = txtEditMinimumTRadius.Text;
                ms.Overview = txtEditOverview.Text;
                ms.PistonDisplacement = txtEditPiston.Text;
                ms.PowerTrain = txtEditPowerTrain.Text;
                ms.RearSuspension = txtEditRearSuspension.Text;
                ms.SafetySecurity = txtEditSafetySecurity.Text;
                ms.SuspensionHandling = txtEditSuspension.Text;
                ms.WeightDimensions = txtEditWeightDimension.Text;
                ms.Wheelbase = txtEditWheelbase.Text;
                ms.Wheels = txtEditWheels.Text;
                ms.FueltankCapacityValue = txtEditFuelTankValue.Text;
                int result = DataService.Provider.AddModelSpec(ms);
                if (result > 0)
                {
                    Response.Redirect(Util.AdminUrl + "maintain-car-product-models&cid=" + Session["CAR_SELECTED"].ToString());
                }            
        }      
    }
}