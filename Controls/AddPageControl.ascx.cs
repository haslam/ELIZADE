using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddPageControl : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        try
        {
            ENL.Data.Models.Page page = new ENL.Data.Models.Page();
            page.created_at = DateTime.Now;
            page.body = txtBody.Text;
            page.in_bottom_nav = chkIsInBottomNav.Checked;
            page.in_footer_nav = chkIsInFooterNav.Checked;
            page.in_main_nav = chkIsInMainNav.Checked;
            page.is_home = chkIsHome.Checked;
            page.meta_description = txtMetaDescription.Text;
            page.meta_keywords = txtMetaKeywords.Text;
            page.meta_title = txtMetaTitle.Text;
            page.nav_title = txtNavTitle.Text;
            page.parent_id = int.Parse(ddlParent.SelectedValue);
            page.status = ddlPageStatus.SelectedValue;
            page.title = txtTitle.Text;
            page.uri = txtUri.Text;
            page.slug = txtSlug.Text;
            page.additionals = "";
            page.banner = "";
            page.css = "";
            page.js = "";
            page.orderrank = 0;
            page.sub_template = "";
            page.template = "";
            page.widgets = "";
            page.ControlName = txtUri.Text;
            page.ControlPath = "Controls/PageControl.ascx";
            page.Pagetype = 1;
            page.updated_at = DateTime.Now;
            int result = DataService.Provider.AddPage(page);
            if (result > 0)
                Response.Redirect(Util.BaseSiteUrl + "a.aspx?p=site-page", true);
        }
        catch (Exception)
        {
            
        }
    }
}