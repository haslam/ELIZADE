using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomeControl : BaseControl
{
    string aa ,msg= "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["account-added"] != null)
        {
            aa = Request.Params["account-added"];
            if (aa == "1")
            {
                // msg.Visible = true;
            }
        }
        if (Request.Params["msg"] != null)
        {
            msg = Request.Params["msg"];
            if (msg != string.Empty)
            {
                message.InnerText = msg;
                message.Visible = true;
            }
        }

        List<Banner> banners = DataService.Provider.GetAllBanners();
        StringBuilder sb = new StringBuilder();
        if (banners != null)
        {
            foreach (var item in banners)
            {
                sb.Append(string.Format(@"<li data-transition='fade' data-slotamount='7' data-masterspeed='1000' data-saveperformance='on' data-title='Elizade Toyota'>
								<img src='{0}'  alt='Elizade Toyota' data-bgposition='center top' data-bgfit='cover' data-bgrepeat='no-repeat'>
								<div class='tp-caption large_text sft tp-resizeme'
									data-x='100'
									data-y='180'
									data-speed='600'
									data-start='1200'
									data-end='9400'
									data-endspeed='600'>{2}
								</div>
                                 <div class='tp-caption sfb medium_light_white tp-resizeme'
									data-x='100'
									data-y='250'
									data-speed='600'
									data-start='1800'
									data-end='9400'
									data-endspeed='600'>{1}
								</div>
						</li>", item.ObjectOfDisplay, item.Description, item.Title));
            }
            plhBanners.Controls.Add(new LiteralControl(sb.ToString()));
        }

        List<News> newsList = DataService.Provider.GetAllNews();
        StringBuilder sbNews = new StringBuilder();
        if (newsList != null)
        {
            foreach (var item in newsList)
            {
                sbNews.Append(string.Format(@"<div class='client'>
									            <a href='" + Util.BaseSiteUrl  + @"p.aspx?p=news-item&newsid={1}' class='nodecor'>{0}</a>
								              </div>", item.title, item.id));
            }
            plhLatestNews.Controls.Add(new LiteralControl(sbNews.ToString()));
        }
    }
}