using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PageControls_PageContent : BaseControl
{
    string p = "";
    public string PageContent { get; set; }
    public string PageTitle { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["p"] != null)
        {
            p = Request.Params["p"];
            PageTitle = DataService.Provider.GetPageTitleByURI(p);
            PageContent = DataService.Provider.GetPageContentByURI(p);
        }
    }
}