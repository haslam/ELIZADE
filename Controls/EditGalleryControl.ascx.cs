using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditGalleryControl : BaseControl
{
    string gid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.Params["pid"] != null) {
            gid = Request.Params["pid"];
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {

    }
}