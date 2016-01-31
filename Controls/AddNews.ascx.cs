using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddNews : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        News curr = new News();
        curr.body = txtBody.Text;
        curr.title = txtTitle.Text;
        curr.updated_at = DateTime.Now;
        int result = DataService.Provider.AddNews(curr);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "latest-news", true);
        }
    }
}