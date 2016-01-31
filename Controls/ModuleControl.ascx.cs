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
using ENL.Data;

public partial class Controls_ModuleControl : BaseControl
{
    string moduleid = "";
    string action = "";
    string imagefile = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: Module ::";
        // Determine unique action for Update
        if (Request.Params["moduleid"] != null)
        {
            moduleid = Request.Params["moduleid"];
        }
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
            {
                BtnCommand.Text = "Update Module Info";
                txtModuleID.Enabled = false;
            }
        }

        if (Page.IsPostBack == false)
        {

            if (moduleid != "")
            {
                // Obtain a single row of event information
                ModuleInfo dr = DataService.Provider.getModuleInfoByModuleId(moduleid);

                txtModuleName.Text = dr.ModuleName;
                txtModuleDescription.Text = dr.ModuleDescription;
                Session["imageFile"] = dr.ModuleImage;
                imagefile = Session["imageFile"].ToString();
                imagepath.ImageUrl = "~/Resources/" + Session["imageFile"].ToString();
                txtModuleID.Text = dr.ModuleID;
            }
        }

    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        try
        {
            if (Request.Params["moduleid"] != null)
            {
                moduleid = Request.Params["moduleid"];
            }
            if (Request.Params["action"] != null)
            {
                action = Request.Params["action"];
            }
            if (int.Parse(action) == 0)
            {
                ModuleInfo supplier = new ModuleInfo();
                supplier.ModuleID = (txtModuleID.Text == string.Empty) ? string.Empty : txtModuleID.Text;
                supplier.ModuleName = (txtModuleName.Text == string.Empty) ? string.Empty : txtModuleName.Text;
                supplier.ModuleDescription = (txtModuleDescription.Text == string.Empty) ? string.Empty : txtModuleDescription.Text;
                supplier.ModuleImage = getImagePath();
                supplier.Acvtive = 1;
                DataService.Provider.AddModuleInfo(supplier);
                ShowMessage("Module Info Saved Successfully!");
            }
            else if (int.Parse(action) == 1)
            {
                imagefile = Session["imageFile"].ToString();
                ModuleInfo supplier = new ModuleInfo();
                supplier.ModuleID = (txtModuleID.Text == string.Empty) ? string.Empty : txtModuleID.Text;
                supplier.ModuleName = (txtModuleName.Text == string.Empty) ? string.Empty : txtModuleName.Text;
                supplier.ModuleDescription = (txtModuleDescription.Text == string.Empty) ? string.Empty : txtModuleDescription.Text;
                supplier.ModuleImage = (moduleImage.HasFile)? getImagePath() : imagefile;
                supplier.Acvtive = 1;
                DataService.Provider.UpdateModuleInfo(supplier);
                ShowMessage("Module Info Updated Successfully!");
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
}

    private string getImagePath()
    {

        string imagefile = null;
        HttpPostedFile file = Request.Files[0];
        if (moduleImage.HasFile)
        {
            imagefile = moduleid + moduleImage.FileName;
            file.SaveAs(Page.MapPath("~/Resources/" + imagefile));
            Session["imageFile"] = imagefile;
            return imagefile;
        }
        else
        {
            if (Session["imageFile"] != null)
            {
                return Session["imageFile"].ToString();
            }
            else { return "no_image.jpg"; }
        }
    }
}
