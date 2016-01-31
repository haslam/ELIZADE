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

public partial class Controls_RoleControl : BaseControl
{
    string userrolename = "";
    string action = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "::  UserRole Maintenance ::";

        // Determine unique action for Update
        if (Request.Params["userrolename"] != null)
        {
            userrolename = Request.Params["userrolename"];
        }
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
            {
                BtnCommand.Text = "Update UserRole";
                txtUserRoleName.Enabled = false;
            }
        }

        if (Page.IsPostBack == false)
        {

            if (userrolename != "")
            {
                // Obtain a single row of event information
                UserRole dr = DataService.Provider.getUserRoleByUserRoleName(userrolename);

                txtUserRoleName.Text = dr.UserRoleName;
                txtRoleDescription.Text = dr.RoleDescription; 
                buildControl();
            }
        }
        

    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        try
        {
            if (Request.Params["userrolename"] != null)
            {
                userrolename = Request.Params["userrolename"];
            }
            if (Request.Params["action"] != null)
            {
                action = Request.Params["action"];
            }
            if (int.Parse(action) == 0)
            {
                UserRole supplier = new UserRole();
                supplier.UserRoleName = (txtUserRoleName.Text == string.Empty) ? string.Empty : txtUserRoleName.Text;
                supplier.RoleDescription = (txtRoleDescription.Text == string.Empty) ? string.Empty : txtRoleDescription.Text;
                DataService.Provider.AddUserRole(supplier);
                ShowMessage("UserRole Saved Successfully!");
                buildControl();
            }
            else if (int.Parse(action) == 1)
            {
                UserRole supplier = new UserRole();
                supplier.UserRoleName = (txtUserRoleName.Text == string.Empty) ? string.Empty : txtUserRoleName.Text;
                supplier.RoleDescription = (txtRoleDescription.Text == string.Empty) ? string.Empty : txtRoleDescription.Text;
                DataService.Provider.UpdateUserRole(supplier);
                ShowMessage("UserRole Updated Successfully!");
                buildControl();
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
    }
    private void buildControl()
    {
        HyperLink hplnk = new HyperLink();
        hplnk.Text = "Set Modules Access for this Role";
        hplnk.NavigateUrl = "~/a.aspx?p=modulesinrole";
        hplnk.Visible = (userrolename == "Administrator") ? false : true;
        Session["pickRoleName"] = userrolename;
        plcModuleinRole.Controls.Add(hplnk);
    }
}
