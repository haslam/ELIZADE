using ENL.Data;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_PageNoControl : System.Web.UI.UserControl
{
    Hashtable hasht = new Hashtable();
    string job = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.Params["p"] != null)
        {
            Hashtable ht = Util.ListItemToHashtable(DataService.Provider.GetAllPageControls());
            ht = DataService.Provider.getListControls();
            job = Request.Params["p"].ToString();
            //List<ControlsForPage> list = DataService.Provider.GetPageControlsByPageUri(job);
            //if (list != null && list.Count > 0)
            //{
            //    foreach (var item in list)
            //    {
            //if (item.ControlName == "Header")
            //{
            //if (!hasht.ContainsKey(item.ControlName))
            if (Page.Master.FindControl("lblHeader") != null)
                Page.Master.FindControl("lblHeader").Controls.Add(Page.LoadControl("~/PageControls/Header.ascx"));
            //hasht.Add(item.ControlName, item.ControlName);
            //}


            //if (item.ControlName == "Slider")
            //{
            //    if (!hasht.ContainsKey(item.ControlName))
            //        if (Page.Master.FindControl("lblSlider") != null)
            //            Page.Master.FindControl("lblSlider").Controls.Add(Page.LoadControl(ht[item.ControlName].ToString()));
            //    hasht.Add(item.ControlName, item.ControlName);
            //}

            //if (item.ControlName == "Breadcrumbs")
            //{
            //    if (!hasht.ContainsKey(item.ControlName))
            //        if (Page.Master.FindControl("lblBreadCrumbs") != null)
            //            Page.Master.FindControl("lblBreadCrumbs").Controls.Add(Page.LoadControl(ht[item.ControlName].ToString()));
            //    hasht.Add(item.ControlName, item.ControlName);
            //}
            //else if (item.ControlName == "Footer")
            //{
            //    if (!hasht.ContainsKey(item.ControlName))
            if (Page.Master.FindControl("lblFooter") != null)
                Page.Master.FindControl("lblFooter").Controls.Add(Page.LoadControl("~/PageControls/Footer.ascx"));
            //    hasht.Add(item.ControlName, item.ControlName);
            //}
            //if (item.ControlName == "Map")
            //{
            //    if (!hasht.ContainsKey(item.ControlName))
            //        if (Page.Master.FindControl("lblMap") != null)
            //            Page.Master.FindControl("lblMap").Controls.Add(Page.LoadControl(ht[item.ControlName].ToString()));
            //    hasht.Add(item.ControlName, item.ControlName);
            //}

            //if (!hasht.ContainsKey(item.ControlName))
            //cort.Controls.Add(Page.LoadControl(ht[item.ControlName].ToString()));
            ENL.Data.Models.Page pet = (ENL.Data.Models.Page)ht[job];
            cort.Controls.Add(Page.LoadControl(pet.ControlPath));
            //hasht.Add(item.ControlName, item.ControlName);                        

        }
    }
}

