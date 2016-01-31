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

public partial class Controls_RolesGrid : BaseControl
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
        UserRoleList.DataSource = DataService.Provider.getAllUserRoles();
        UserRoleList.DataBind();
    }
}
