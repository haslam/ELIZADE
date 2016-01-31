using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_NewsItem : BaseControl
{
    public string NewsTitle { get; set; }
    public string NewsBody { get; set; }
    string newsid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["newsid"] != null) {
            newsid = Request.Params["newsid"];
            News news = DataService.Provider.GetNewsByNewsId(int.Parse(newsid));
            if (news != null)
            {
                NewsTitle = news.title;
                NewsBody = news.body;
            }
        }
    }
}