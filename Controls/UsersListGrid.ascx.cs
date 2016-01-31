using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_UsersListGrid : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: User(s) Maintenance ::";
        BindList();
    }

    protected void UsersList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        UsersList.PageIndex = e.NewPageIndex;
        BindList();
    }

    private void BindList()
    {
        UsersList.DataSource = ENL.Data.DataService.Provider.getAllUserDetails();
        UsersList.DataBind();
    }
}