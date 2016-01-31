using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_PartRequestListGrid : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataSource = DataService.Provider.GetAllPartRequests();
        GridView1.DataBind();
    }
}