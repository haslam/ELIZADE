using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for ENLMaster
/// </summary>
public partial class ENLMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<CarProduct2> cars = DataService.Provider.GetAllNewCars();
        List<string> cat = (from c in cars
                            orderby c.CatName ascending
                            select c.CatName.ToString()).Distinct().ToList();
        StringBuilder sb = new StringBuilder();
        plhMegamenu.Controls.Clear();
        string end = "</div>";
        string start = "<div class='row'>";


        string catname = "";
        foreach (var ct in cat)
        {
            int count = 0;
            int cnt = 1;
            List<CarProduct2> carCat = cars.Where(c => c.CatName == ct).OrderBy( c =>c.Name) .ToList();
            int totalcount = carCat.Count;
            int noOfEmpty = 0;
            if (totalcount < 6) { noOfEmpty = 6 - totalcount; }
            else
            { noOfEmpty = totalcount % 6; }
            catname = ct;
            foreach (CarProduct2 m in carCat)
            {
                count++;
                catname = m.CatName.ToString();
                if (cnt == 0 && count > 6)
                {
                    if (cnt == 1)
                    {
                        sb.Append("<div class='row'>");
                        sb.Append(string.Format(@"
					        <div class='col-xs-6 col-sm-2'>
						           <a href='/p.aspx?p=vehicleitem&item={2}'>
						           <img src='{0}' alt='{1} icon'>{1}</a>
					        </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id));

                        if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
                    }
                    else
                    {
                        if (cnt == 6)
                        {
                            sb.Append(string.Format(
                           @"<div class='col-xs-6 col-sm-2'>
						   <a href='/p.aspx?p=vehicleitem&item={2}'>
						   <img src='{0}' alt='{1} icon'>{1}</a>
						  </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id));
                            if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
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
                            if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
                        }
                    }
                    cnt++;
                }
                else
                {
                    if (cnt == 1)
                    {
                        sb.Append(start);
                        sb.Append(string.Format(
                            @"<h3 style='padding-left:10px;'>{3}</h3>
					        <div class='col-xs-6 col-sm-2'>
						           <a href='/p.aspx?p=vehicleitem&item={2}'>
						           <img src='{0}' alt='{1} icon'>{1}</a>
					        </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id, catname));
                        if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
                    }
                    else
                    {
                        if (cnt == 6)
                        {
                            sb.Append(string.Format(
                           @"<div class='col-xs-6 col-sm-2'>
						   <a href='/p.aspx?p=vehicleitem&item={2}'>
						   <img src='{0}' alt='{1} icon'>{1}</a>
						  </div>", "ProductImages/" + m.PhotoFile, m.Name, m.Id));
                            if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
                           
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
                            if (count == totalcount) { AddEmpty(noOfEmpty, sb); }
                        }
                    }
                    cnt++;
                }
            }
        }
        plhMegamenu.Controls.Add(new LiteralControl(sb.ToString()));
    }

    private void AddEmpty(int noOfEmpty, StringBuilder sb)
    {
        if (noOfEmpty > 0)
        {
            for (int i = 0; i < noOfEmpty; i++)
            {
                sb.Append("<div class='col-xs-6 col-sm-2'></div>");

            }
            sb.Append("</div>");
        }
    }
}
