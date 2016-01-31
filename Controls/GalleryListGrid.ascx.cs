using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_GalleryListGrid : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindList();
    }

    protected void grdPageListGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string ShippingAgentID = "";
        if (HyperLink2.Enabled)
            ShippingAgentID = grdPageListGrid.Rows[e.RowIndex].Cells[1].Text;
        else
            ShippingAgentID = ((TextBox)grdPageListGrid.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        int ship = Convert.ToInt32(ShippingAgentID);
        int res = DataService.Provider.DeleteGalleryItem(ship);
        if (res > 0)
        {
            ShowMessage("Gallery deleted successfully!");
            BindList();
        }
    }
    protected void grdPageListGrid_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ((LinkButton)e.Row.Cells[0].Controls[0]).Attributes.Add("onclick", "return Confirmation();");
        }
    }

    protected void grdPageListGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdPageListGrid.PageIndex = e.NewPageIndex;
        BindList();
    }

    private void BindList()
    {
        grdPageListGrid.DataSource = DataService.Provider.GetAllGalleries();
        grdPageListGrid.DataBind();
    }
}