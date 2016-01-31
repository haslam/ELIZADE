using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditPageControl : BaseControl
{
    string bid = ""; string action = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
            {
                bid = Request.Params["pid"];
            }
        }
        if (Page.IsPostBack == false)
        {
            if (bid != "")
            {
                grdPageControls.DataSource = DataService.Provider.GetAllPageControls();
                grdPageControls.DataBind();

                ENL.Data.Models.Page dnd = DataService.Provider.GetPageByPageId(int.Parse(bid));
                lblPageId.Text = dnd.page_id.ToString();
                txtBody.Text = dnd.body;
                chkIsInBottomNav.Checked = (bool)dnd.in_bottom_nav;
                chkIsInFooterNav.Checked = (bool)dnd.in_footer_nav;
                chkIsInMainNav.Checked = (bool)dnd.in_main_nav;
                chkIsHome.Checked = (bool)dnd.is_home;
                txtMetaDescription.Text = dnd.meta_description;
                txtMetaKeywords.Text = dnd.meta_keywords;
                txtMetaTitle.Text = dnd.meta_title;
                txtNavTitle.Text = dnd.nav_title;
                ddlPageStatus.SelectedValue = dnd.status;
                txtTitle.Text = dnd.title;
                txtUri.Text = dnd.uri;
                txtSlug.Text = dnd.slug;
                ddlParent.SelectedValue = dnd.parent_id.ToString();
                /*                  
                    dnd.additionals = "";
                    dnd.banner = "";
                    dnd.css = "";
                    dnd.js = "";
                    dnd.orderrank = 0;
                    dnd.sub_template = "";
                    dnd.template = "";
                    dnd.widgets = "";
                 
                 */

                BtnCommand.Text = " Update Page";
                List<ControlsForPage> pgCtrls = DataService.Provider.GetPageControlsByPageUri(txtUri.Text);
                foreach (var item in pgCtrls)
                {
                    for (int j = 0; j < grdPageControls.Items.Count; j++)
                    {
                        Label lblName = ((Label)grdPageControls.Items[j].FindControl("lblName"));
                        if (item.ControlName == lblName.Text)
                        {
                            CheckBox chkSelected = ((CheckBox)grdPageControls.Items[j].FindControl("chkSelected"));
                            chkSelected.Checked = true;
                        }
                    }
                }

            }
        }
    }

   protected void grdPageControls_ItemCreated(Object Sender, RepeaterItemEventArgs e)
    {

        // This event is raised for the header, the footer, separators, and items.

        // Execute the following logic for Items and Alternating Items.
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            if ((((PageControl)e.Item.DataItem).Name == "Header") || (((PageControl)e.Item.DataItem).Name == "Footer") || (((PageControl)e.Item.DataItem).Name == "PageContent"))
            {
                ((CheckBox)e.Item.FindControl("chkSelected")).Checked = true;
                ((CheckBox)e.Item.FindControl("chkSelected")).Enabled = true;
            }
        }
    }    


    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        int result = -1;
        try
        {
            if (Request.Params["action"] != null)
            {
                action = Request.Params["action"];
                if (int.Parse(action) == 1)
                {
                    bid = Request.Params["pid"];
                    ENL.Data.Models.Page page = new ENL.Data.Models.Page();
                    page.page_id = int.Parse(bid);
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

                    List<ControlsForPage> ctrls = new List<ControlsForPage>();
                    int count = 0;
                    for (int i = 0; i < grdPageControls.Items.Count; i++)
                    {
                        CheckBox SelectTime = ((CheckBox)grdPageControls.Items[i].FindControl("chkSelected"));
                        if (SelectTime.Checked == true)
                        {
                            count++;
                            Label lblName = ((Label)grdPageControls.Items[i].FindControl("lblName"));
                            ControlsForPage p = new ControlsForPage();
                            p.ControlName = lblName.Text;
                            p.PageUri = txtUri.Text;
                            ctrls.Add(p);
                        }
                    }
                    if (count == 2)
                    {
                        ShowWarningMessage(" Please select at least a control other than the default selections for this page!");
                        return;
                    }
                    result = DataService.Provider.UpdatePage(page, ctrls);
           
                }
                else
                {

                }
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
        if (result > 0)
        {
            Response.Redirect(Util.BaseSiteUrl + "a.aspx?p=site-page", true);
        }        
    }
}