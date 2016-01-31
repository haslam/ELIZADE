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

public partial class Controls_UserInRoleControl : ENL.Data.BaseControl
{
    string username = "";
    string action = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "::  User In Role Maintenance ::";

        // Determine unique action for Update
        if (Request.Params["username"] != null)
        {
            username = Request.Params["username"];
            lblUsername.Text = username;
        }
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
       int res =  DataService.Provider.SetUserInRole(username, ddlRoleName.SelectedValue);
       Response.Redirect("~/a.aspx?p=user-list");

    }
}
