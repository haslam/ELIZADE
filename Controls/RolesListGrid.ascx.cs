using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_RolesListGrid : ENL.Data.BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: User Role Maintenance ::";
        BindList();
    }
    protected void UserRoleList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        UserRoleList.PageIndex = e.NewPageIndex;
        BindList();
    }

    private void BindList()
    {
        UserRoleList.DataSource = ENL.Data.DataService.Provider.getAllUserRoles();
        UserRoleList.DataBind();
    }
}
