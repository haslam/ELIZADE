using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Awards : ENL.Data.BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //<div class="tab-pane fade in active" id="vtab1">
        //  <div class="image-boxes row">
        //  <div class="col-md-4 col-sm-6 ">
        //      <div class="image-box">
        //          <div class="overlay-container new-color">
        //              <img src="images/Toyota/awards/thumb/2013-1.png" alt="">
        //          </div>
        //          <div class="image-box-body">
        //                  <h5>Customer Service Excellence</h5>
        //                  <p>Description : Customer Service Excellence Award in Automobile Industry</p>
        //          </div>
        //      </div>
        //  </div>
        //  </div>

        //</div>

        StringBuilder sb = new StringBuilder();
        StringBuilder sb1 = new StringBuilder();
        plhTabs.Controls.Clear();
        plhTabContent.Controls.Clear();
        int count = 0;

        List<AwardYear> list = DataService.Provider.GetYearsInAward();
        foreach (var item in list)
        {
            count++;
            List<AwardDetail> listItems = DataService.Provider.GetAwardDetailInYear((int)item.AYear);
            if (count == 1)
            {
                sb.Append(string.Format(@"<li class='active'><h3><a href='#vtab{0}' role='tab' data-toggle='tab'>{1}</a></h3></li>", count, item.AYear));
                sb1.Append(GetDet(listItems, count));

            }
            else
            {
                sb.Append(string.Format(@"<li><h3><a href='#vtab{0}' role='tab' data-toggle='tab'>{1}</a></h3></li>", count, item.AYear));
                sb1.Append(GetDet(listItems, count));
            }
        }
        plhTabs.Controls.Add(new LiteralControl(sb.ToString()));
        plhTabContent.Controls.Add(new LiteralControl(sb1.ToString()));
    }

    private string GetDet(List<AwardDetail> listItems, int ct)
    {
        StringBuilder sbk = new StringBuilder();
        sbk.Append(string.Format("<div class='tab-pane fade in active' id='vtab{0}'>", ct));
        sbk.Append(" <div class='image-boxes row'>");
        foreach (var item in listItems)
        {
            sbk.Append("<div class='col-md-4 col-sm-6'>");
            sbk.Append(" <div class='image-box'>");
            sbk.Append("     <div class='overlay-container new-color'>");
            sbk.Append(string.Format("        <img src='/AwardImages/{0}' alt=''>", item.AwardImageFile));
            sbk.Append("      </div>");
            sbk.Append("     <div class='image-box-body'>");
            sbk.Append(string.Format("              <h5>{0}</h5>", item.AwardTitle));
            sbk.Append(string.Format("              {0}", item.AwardDescription));
            sbk.Append("       </div>");
            sbk.Append("   </div>");
            sbk.Append("</div>");

        } 

        sbk.Append("</div>");
        sbk.Append("</div>");

        return sbk.ToString();
    }
}