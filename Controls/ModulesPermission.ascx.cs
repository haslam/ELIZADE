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
using System.Collections.Generic;


public partial class Controls_ModulesPermission : ENL.Data.BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: Module(s) Privileges ::";
        if (Session["pickRoleName"] != null)
        {
            lblRoleName.Text = (Session["pickRoleName"] != null) ? Session["pickRoleName"].ToString() : string.Empty;
            ModuleList.DataSource = ENL.Data.DataService.Provider.getAllModules();
            ModuleList.DataBind();
            Util.getModulesPrivForRole(lblRoleName.Text, ModuleList);
        }
        getSelectedPermission(lblRoleName.Text);
    }

    private void getSelectedPermission(string p)
    {
        List<ENL.Data.ModulePermission> listmodule = DataService.Provider.GetRoleModulePermissions(p);
        if (listmodule != null)
        {
            foreach (ModulePermission var in listmodule)
            {           
                for (int j = 0; j < ModuleList.Items.Count; j++)
                {                    
                    Label lblModuleID = ((Label)ModuleList.Items[j].FindControl("lblModuleID"));
                    if (var.ModuleID == lblModuleID.Text)
                    {
                        CheckBox chkSelected = ((CheckBox)ModuleList.Items[j].FindControl("chkSelected"));
                        chkSelected.Checked = true;

                        CheckBox chkadd = ((CheckBox)ModuleList.Items[j].FindControl("chkadd"));
                        chkadd.Checked = (var.hasAdd > 0) ? true : false;

                        CheckBox chkedit = ((CheckBox)ModuleList.Items[j].FindControl("chkedit"));
                        chkedit.Checked = (var.hasEdit > 0) ? true : false;

                        
                        CheckBox chkdelete = ((CheckBox)ModuleList.Items[j].FindControl("chkdelete"));
                        chkdelete.Checked = (var.hasDelete > 0) ? true : false;

                        CheckBox chkview = ((CheckBox)ModuleList.Items[j].FindControl("chkview"));
                        chkview.Checked = (var.hasView > 0) ? true : false;
                        break;
                    }
                }
            }
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        List<ModulePermission> permlist = new List<ModulePermission>();
        int count = 0;
        for (int i = 0; i < ModuleList.Items.Count; i++)
        {
            CheckBox SelectTime = ((CheckBox)ModuleList.Items[i].FindControl("chkSelected"));
            if (SelectTime.Checked == true)
            {
                ModulePermission mp = new ModulePermission();
                count++;
                Label lblModuleID = ((Label)ModuleList.Items[i].FindControl("lblModuleID"));
                mp.ModuleID = lblModuleID.Text;
                CheckBox chkadd = ((CheckBox)ModuleList.Items[i].FindControl("chkadd"));
                mp.hasAdd = (chkadd.Checked)? 1:0;
                CheckBox chkedit = ((CheckBox)ModuleList.Items[i].FindControl("chkedit"));
                mp.hasEdit = (chkedit.Checked)?1:0;
                CheckBox chkview = ((CheckBox)ModuleList.Items[i].FindControl("chkview"));
                mp.hasView = (chkview.Checked)?1:0;
                CheckBox chkdelete = ((CheckBox)ModuleList.Items[i].FindControl("chkdelete"));
                mp.hasDelete = (chkdelete.Checked)?1:0;
                mp.RoleName = (Session["pickRoleName"] != null) ? Session["pickRoleName"].ToString() : string.Empty;
                permlist.Add(mp);
            }
            else
            {

            }
        }
        if (count == 0)
        {
            ShowWarningMessage(" Please select at least a Module for this role!");
        }
        else
        {
            if(DataService.Provider.AddModulePermissions(permlist, lblRoleName.Text)>0)
                ShowMessage("Module Permissions Saved Successfully for Role!");
            else
                ShowError("Error Occurred Saving Permission for Role!");
        }

    }
}
