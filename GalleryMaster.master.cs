using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

public partial class GalleryMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<CarProduct2> cars = DataService.Provider.GetAllNewCars();
        StringBuilder sb = new StringBuilder();
        plhMegamenu.Controls.Clear();

        string end = "</div>";

        int count = 0;
        int cnt = 1;
        foreach (CarProduct2 m in cars)
        {
            if (cnt == 1)
            {
                sb.Append("<div class='row'>");
                sb.Append(string.Format(
                    @"<h3>{3}</h3>
					<div class='col-xs-6 col-sm-2'>
						   <a href='/p.aspx?p=vehicleitem&item={2}'>
						   <img src='{0}' alt='{1} icon'>{1}</a>
					</div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id, m.CatName));
            }
            else
            {


                if (cnt == 5)
                {
                    sb.Append(string.Format(
                   @"<div class='col-xs-6 col-sm-2'>
						   <a href='/p.aspx?p=vehicleitem&item={2}'>
						   <img src='{0}' alt='{1} icon'>{1}</a>
						  </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id));
                    sb.Append(end);
                    //sb.Append("<hr class='margin-bottom-40'>");
                    cnt = 0;
                }
                else
                {
                    sb.Append(string.Format(
                    @"<div class='col-xs-6 col-sm-2'>
						   <a href='/p.aspx?p=vehicleitem&item={2}'>
						   <img src='{0}' alt='{1} icon'>{1}</a>
						  </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id));
                }
            }
            cnt++;
        }
        plhMegamenu.Controls.Add(new LiteralControl(sb.ToString()));
    }
}
