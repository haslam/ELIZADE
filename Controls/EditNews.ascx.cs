using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditNews : BaseControl
{
    string nid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["nid"] != null)
        {
            nid = Request.Params["nid"];
            News news = DataService.Provider.GetNewsByNewsId(int.Parse(nid));
            if (news != null)
            {
                lblId.Text = news.id.ToString();
                txtTitle.Text = news.title;
                txtBody.Text = news.body;
            }
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        News curr = new News();
        curr.body = txtBody.Text;
        curr.title = txtTitle.Text;
        curr.id = int.Parse(lblId.Text.Trim());
        curr.updated_at = DateTime.Now;
        int result = DataService.Provider.UpdateNews(curr);
        if (result > 0) {
            Response.Redirect(Util.AdminUrl + "latest-news", true);
        }
    }
}