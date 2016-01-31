using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_VehicleItem : System.Web.UI.UserControl
{
    public CarProduct VEHICLE { get; set; }
    public string BannerImage { get; set; }
    string item = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["item"] != null)
        {
            item = Request.Params["item"];
            CarProduct car = DataService.Provider.GetCarByCarId(int.Parse(item));
            VEHICLE = car;
            if (car != null)
            {
                BannerImage = DataService.Provider.GetCarBannerImage(car.Id);
                GetExterior(car.Id);
                GetInterior(car.Id);
                GetFeatures(car.Id);
                GetModelSpecs(car.Id);
            }
        }
    }

    private void GetModelSpecs(int carId)
    {
        StringBuilder sb = new StringBuilder();
        List<ModelSpec> content = DataService.Provider.GetModelSpecs2(carId);
        if (content != null)
        {
            Hashtable ht = new Hashtable();
            //string[] models = GetModelsInList(content).ToArray();
            var models = content;
            Hashtable Realcols = new Hashtable();
            Realcols["Overview"] = "Overview";
            Realcols["Year"] = "Year";
            Realcols["Transmission"] = "Transmission";
            Realcols["EngineCapacity"] = "Engine Capacity";
            Realcols["DriveLine"] = "Drive Line";
            Realcols["Doors"] = "Doors";
            Realcols["ExteriorColorOptions"] = "Exterior Color Options";
            Realcols["InteriorColorOption"] = "Interior Color Option";
            Realcols["BodyStyle"] = "Body style";
            Realcols["FuelEfficiencyRating"] = "Fuel Efficiency Rating";
            Realcols["KeyFeatures"] = "Key Features";
            Realcols["Convenience"] = "Convenience";
            Realcols["Entertainment"] = "Entertainment";
            Realcols["SafetySecurity"] = "Safety/Security";
            Realcols["LLI"] = "Lighting Visibility & Instrumentation";
            Realcols["WeightDimensions"] = "Weight & Dimensions";
            Realcols["LengthWidthHeight"] = "Length x Width x Height (mm)";
            Realcols["Wheelbase"] = "Wheelbase (mm)";
            Realcols["GroundClearance"] = "Ground Clearance (mm)";
            Realcols["CurbWeight"] = "Curb Weight (kg)";
            Realcols["GrossVehicleWeight"] = "Gross Vehicle Weight (kg)";
            Realcols["MinimumTurningRadius"] = "Minimum Turning Radius (mm)";
            Realcols["SuspensionHandling"] = "Suspension/Handling";
            Realcols["FrontSuspension"] = "Front Suspension";
            Realcols["RearSuspension"] = "Rear Suspension";
            Realcols["Brakes"] = "Brakes (Front/Rear)";
            Realcols["Tyres"] = "Tyres (Front & Rear)";
            Realcols["Wheels"] = "Wheels";
            Realcols["Model"] = "Model";
            Realcols["PowerTrain"] = "Power Train";
            Realcols["Engine"] = "Engine";
            Realcols["EngineSize"] = "Engine Size";
            Realcols["PistonDisplacement"] = "Piston Displacement(cc)";
            Realcols["MaxOutput"] = "Max. Output (KW/rpm)";
            Realcols["MaxTorque"] = "Max. Torque (Nm/rpm)";
            Realcols["FuelSystem"] = "Fuel System";
            Realcols["FueltankCapacity"] = "Fuel tank Capacity (Liters)";
            Realcols["FueltankCapacityValue"] = "Fuel tank Capacity (Liters)";

            string[] cols = new string[] {"Model","Overview", "Year","Transmission" ,"EngineCapacity","DriveLine", "Doors","ExteriorColorOptions","InteriorColorOption","BodyStyle","FuelEfficiencyRating"
                ,"KeyFeatures","Convenience","Entertainment","SafetySecurity","LLI","WeightDimensions","LengthWidthHeight","Wheelbase","GroundClearance","CurbWeight"
                ,"GrossVehicleWeight","MinimumTurningRadius","SuspensionHandling" ,"FrontSuspension","RearSuspension" ,"Brakes","Tyres","Wheels","PowerTrain"
                ,"Engine","EngineSize","PistonDisplacement","MaxOutput","MaxTorque","FuelSystem","FueltankCapacityValue"};//"FueltankCapacity",
            foreach (var item in content)
            {
                Hashtable item_Hash = GetHashtableFromModelSpec(item);
                foreach (var model in models)
                {
                    if (item.Model == model.Model)
                    {
                        foreach (var col in cols)
                        {
                            ht[model.Model + col + model.Id.ToString()] = item_Hash[col];
                        }
                    }
                }
            }

            //generate table
            sb.Append("<table style=\"width:100%\" class=\"table table-striped table-responsive table-bordered table-colored\">");
            Hashtable options = new Hashtable();
            options.Add("Overview", "Overview");
            options.Add("KeyFeatures", "Key Features");
            options.Add("WeightDimensions", "Weight & Dimensions");
            options.Add("SuspensionHandling", "Suspension/Handling");
            options.Add("PowerTrain", "Power Train");

            foreach (var col in cols)
            {
                if (options.ContainsKey(col)) {
                    sb.Append("<tr>");
                    sb.Append("<td colspan='2'><strong>");
                    sb.Append(Realcols[col]);
                    sb.Append("</strong></td>");                   
                    sb.Append("</tr>");
                    continue;
                }

                sb.Append("<tr>");
                sb.Append("<td>");
                sb.Append(Realcols[col]);
                sb.Append("</td>");
                foreach (var mod in models)
                {
                    sb.Append("<td>");
                    sb.Append(ht[mod.Model + col + mod.Id.ToString()]);
                    sb.Append("</td>");
                }
                sb.Append("</tr>");
            }
            sb.Append("</table>");
        }
        plhModelSpec.Controls.Add(new LiteralControl(sb.ToString()));
    }

    private Hashtable GetHashtableFromModelSpec(ModelSpec item)
    {
        if (item != null)
        {
            Hashtable ht = new Hashtable();
            // use reflection to set the properties for this class
            ht["Overview"] = (item.Overview == null) ? "" : item.Overview;
            ht["Year"] = (item.Year == null) ? "" : item.Year;
            ht["Transmission"] = (item.Transmission == null) ? "" : item.Transmission;
            ht["EngineCapacity"] = (item.EngineCapacity == null) ? "" : item.EngineCapacity;
            ht["DriveLine"] = (item.DriveLine == null) ? "" : item.DriveLine;
            ht["Doors"] = (item.Doors == null) ? "" : item.Doors;
            ht["ExteriorColorOptions"] = (item.ExteriorColorOptions == null) ? "" : item.ExteriorColorOptions;
            ht["InteriorColorOption"] = (item.InteriorColorOption == null) ? "" : item.InteriorColorOption;
            ht["BodyStyle"] = (item.BodyStyle == null) ? "" : item.BodyStyle;
            ht["FuelEfficiencyRating"] = (item.FuelEfficiencyRating == null) ? "" : item.FuelEfficiencyRating; 
            ht["KeyFeatures"]  = (item.KeyFeatures == null) ? "" : item.KeyFeatures; 
            ht["Convenience"] = (item.Convenience == null) ? "" : item.Convenience;
            ht["Entertainment"] = (item.Entertainment == null) ? "" : item.Entertainment;
            ht["SafetySecurity"] = (item.SafetySecurity == null) ? "" : item.SafetySecurity;
            ht["LLI"] = (item.LLI == null) ? "" : item.LLI;
            ht["WeightDimensions"] = (item.WeightDimensions == null) ? "" : item.WeightDimensions;
            ht["LengthWidthHeight"] = (item.LengthWidthHeight == null) ? "" : item.LengthWidthHeight;
            ht["Wheelbase"] = (item.Wheelbase == null) ? "" : item.Wheelbase;
            ht["GroundClearance"] = (item.GroundClearance == null) ? "" : item.GroundClearance;
            ht["CurbWeight"] = (item.CurbWeight == null) ? "" : item.CurbWeight;
            ht["GrossVehicleWeight"] = (item.GrossVehicleWeight == null) ? "" : item.GrossVehicleWeight;
            ht["MinimumTurningRadius"] = (item.MinimumTurningRadius == null) ? "" : item.MinimumTurningRadius;
            ht["SuspensionHandling"] = (item.SuspensionHandling == null) ? "" : item.SuspensionHandling;
            ht["FrontSuspension"] = (item.FrontSuspension == null) ? "" : item.FrontSuspension;
            ht["RearSuspension"] = (item.RearSuspension == null) ? "" : item.RearSuspension;
            ht["Brakes"] = (item.Brakes == null) ? "" : item.Brakes;
            ht["Tyres"] = (item.Tyres == null) ? "" : item.Tyres;
            ht["Wheels"] = (item.Wheels == null) ? "" : item.Wheels;
            ht["PowerTrain"] = (item.PowerTrain == null) ? "" : item.PowerTrain;
            ht["Engine"] = (item.Engine == null) ? "" : item.Engine;
            ht["EngineSize"] = (item.EngineSize == null) ? "" : item.EngineSize;
            ht["PistonDisplacement"] = (item.PistonDisplacement == null) ? "" : item.PistonDisplacement; 
            ht["MaxOutput"]  = (item.MaxOutput == null) ? "" : item.MaxOutput;
            ht["MaxTorque"] = (item.MaxTorque == null) ? "" : item.MaxTorque;
            ht["FuelSystem"] = (item.FuelSystem == null) ? "" : item.FuelSystem;
            //ht["FueltankCapacity"] = (item.FueltankCapacity == null) ? "" : item.FueltankCapacity;
            ht["FueltankCapacityValue"] = (item.FueltankCapacityValue == null) ? "" : item.FueltankCapacityValue;
            ht["Model"] = (item.Model == null) ? "" : item.Model;
            return ht;
        }
        return null;
    }

    private List<string> GetModelsInList(List<ModelSpec> content)
    {
        List<string> me = new List<string>();
        if (content != null)
        {
            foreach (var item in content)
            {
                me.Add(item.Model);
            }
            return me;
        }
        return null;
    }

    private void GetFeatures(int p)
    {
        StringBuilder sb = new StringBuilder();
        string content = DataService.Provider.GetFeatures(p);
        sb.Append(content);
        
        plhFeatures.Controls.Add(new LiteralControl(sb.ToString()));
    }

    private void GetInterior(int p)
    {
        List<CarPhoto> photos = DataService.Provider.GetCarInteriorPhotos(p);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb = new StringBuilder();
        int cnt = 0;
        string end2 = "</ul></div>";
        string end = ""; string imagename = "";
        sb.Append(end);
        if ((photos != null) && (photos.Count > 0))
        {
            foreach (var m in photos)
            {
                cnt++;
                if (cnt == 1)
                {
                    imagename = "ProductImages/" + m.PhotoFilename;
                    sb.Append(string.Format(
                        @"<li>
                                <img src='{0}' alt='{1}' class='thumbgalint' />
                         </li>", "ProductImages/thumb/" + m.PhotoFilename, m.Alt));
                }
                else
                {
                    sb.Append(string.Format(
                     @"<li>
                                <img src='{0}' alt='{1}' class='thumbgalint' />
                         </li>", "ProductImages/thumb/" + m.PhotoFilename, m.Alt));
                }
            }
            end = string.Format(@"<div id='galleryint'>
                        <img src='{0}' alt='' id='main-imgint' />
                        <ul>", imagename);
            sb2.Append(end);
            sb2.Append(sb.ToString());
            sb2.Append(end2);
            
            plhInterior.Controls.Add(new LiteralControl(sb2.ToString()));
            sb2 = null; sb = null;
        }
    }

    private void GetExterior(int p)
    {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        int cnt = 0;
        string imagename = "";
        string end = "";

        List<CarPhoto> photos = DataService.Provider.GetCarExteriorPhotos(p);
        string end2 = "</ul></div>";
        sb.Append(end);
        if ((photos != null) && (photos.Count > 0))
        {
            foreach (var m in photos)
            {
                cnt++;
                if (cnt == 1)
                {
                    imagename = "ProductImages/" + m.PhotoFilename;
                    sb.Append(string.Format(
                        @"<li>
                                <img src='{0}' alt='{1}' class='thumbgal' />
                         </li>", "ProductImages/thumb/" + m.PhotoFilename, m.Alt));
                }
                else
                {
                    sb.Append(string.Format(
                     @"<li>
                                <img src='{0}' alt='{1}' class='thumbgal' />
                         </li>", "ProductImages/thumb/" + m.PhotoFilename, m.Alt));
                }
            }
            end = string.Format(@"<div id='gallery'>
                        <img src='{0}' alt='' id='main-img' />
                        <ul>", imagename);
            sb2.Append(end);
            sb2.Append(sb.ToString());
            sb2.Append(end2);
            plhExterior.Controls.Add(new LiteralControl(sb2.ToString()));
            sb2 = null; sb = null;
        }
    }
    /*
    private void GetInterior(int p)
    {
        StringBuilder sb = new StringBuilder();
        int cnt = 0;
        string end = @" </div>
                        <div class='space-bottom'></div>";
        List<CarPhoto> photos = DataService.Provider.GetCarExteriorPhotos(p);
        if ((photos != null) && (photos.Count > 0))
        {
            foreach (var m in photos)
            {
                cnt++;
                if (cnt == 1)
                {
                    sb.Append("<div class='row'>");
                    sb.Append(string.Format(
                        @"<div class='overlay-container'>
                                        <img src='{0}' alt=''>
                                        <a href='{0}' class='overlay popup-img' title='{1}'>
                                            <i class='fa fa-search-plus'></i>
                                        </a>
                          </div>
                          <div class='space-bottom'></div>
                          <div class='row'>", "ProductImages/" + m.PhotoFilename, m.Alt));
                }
                else
                {
                    sb.Append(string.Format(
                   @"<div class='col-xs-3'>
                        <div class='overlay-container'>
                            <img src='{0}' alt='{1}'>
                            <a href='{0}' class='overlay small popup-img' title='{1}'>
                            <i class='fa fa-search-plus'></i></a>
                        </div>
                     </div>", "ProductImages/" + m.PhotoFilename, m.Alt));

                    // cnt = 0;

                }
            }
            sb.Append(end);
            PlhInterior.Controls.Add(new LiteralControl(sb.ToString()));
        }
    } */
}