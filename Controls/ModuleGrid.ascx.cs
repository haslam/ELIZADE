using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Controls_ModuleGrid : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: Module(s) ::";
        BindGrid();
    }

    public void VesselsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        VesselsList.PageIndex = e.NewPageIndex;
        BindGrid();
    }

    private void BindGrid()
    {
        VesselsList.DataSource = ENL.Data.DataService.Provider.getAllModules();
        VesselsList.DataBind();
    }
}
