using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_NewsletterListGrid : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) { BindList(); }
    }

    protected void grdPageListGrid_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //string ShippingAgentID = "";
        //if (HyperLink2.Enabled)
        //    ShippingAgentID = grdPageListGrid.Rows[e.RowIndex].Cells[1].Text;
        //else
        //    ShippingAgentID = ((TextBox)grdPageListGrid.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
        //int ship = Convert.ToInt32(ShippingAgentID);
        //int res = DataService.Provider.DeleteFAQ(ship);
        //if (res > 0)
        //{
        //    ShowMessage("Newsletter Email deleted successfully!");
        //    BindList();
        //}
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
        grdPageListGrid.DataSource = DataService.Provider.GetAllNewsLetterEmails();
        grdPageListGrid.DataBind();
    }

    //public override void VerifyRenderingInServerForm(Control control)
    //{
    //    //required to avoid the runtime error "  
    //    //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    //}  

    protected void lnkEmailSub_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer = true;
        Response.ClearContent();
        Response.ClearHeaders();
        Response.Charset = "";
        string FileName = "Emaills" + DateTime.Now + ".xls";
        StringWriter strwritter = new StringWriter();
        HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
        grdPageListGrid.GridLines = GridLines.Both;
        grdPageListGrid.HeaderStyle.Font.Bold = true;
        grdPageListGrid.RenderControl(htmltextwrtter);
        Response.Write(strwritter.ToString());
        Response.End();      
    }

    protected void lnkExportToExcel_Click(object sender, EventArgs e)
    {
        List<EmailNewsLetter> list = DataService.Provider.GetAllNewsLetterEmails();
        string FileName = "Emaills" + DateTime.Now + ".xls";
        Util.ExportToExcel(list, typeof(EmailNewsLetter), FileName);
    }
}