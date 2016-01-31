using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ServiceCenters : BaseControl
{
    public string HOAddress { get; set; }
    public string HOTelephone  { get; set; }
    public string HOEnquiryEmail { get; set; }
    public string HOSalesEmail { get; set; }
    public string HOServiceEmail { get; set; }
    public string HOPartsEmail { get; set; }

    protected void Page_Load(object sender, EventArgs e)
    {
        Location news = DataService.Provider.GetLocation("HO");
        if (news != null)
        {
            HOAddress = news.Address;
            HOTelephone = news.SalesPhone + " " + news.ServicePhone + " " + news.PartsPhone;
            HOEnquiryEmail = news.GeneralEnquiryEmail;
            HOPartsEmail = news.PartsEmail;
            HOSalesEmail = news.SalesEmail;
            HOServiceEmail = news.ServiceEmail;
        }

        StringBuilder sbone = new StringBuilder();
        List<Location> ServiceLocations = DataService.Provider.GetLocations("3S");
        if (ServiceLocations != null)
        {
            string start = "<div class='row'>";
            string mid = @"  <div class='col-xs-12 col-sm-4'>
                                <div class='box-style-1 thinblock '>
                                    <div class='text-left' style='background-color: rgba(255,255,255,0.1);'>";
            string close = @"       </div>
                                </div>
                            </div>";
            string end = "</div>";
            int count = 0;
            foreach (var item in ServiceLocations)
            {
                count++;
                if (count == 1)
                {
                    string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                    sbone.Append(start);
                    sbone.Append(mid);
                    sbone.Append(body);
                    sbone.Append(close);
                }
                else
                {
                    if (count == 3)
                    {
                        string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                        //sbone.Append(start);
                        sbone.Append(mid);
                        sbone.Append(body);
                        sbone.Append(close);
                        sbone.Append(end);
                        count = 0;
                    }
                    else
                    {
                        string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                        //sbone.Append(start);
                        sbone.Append(mid);
                        sbone.Append(body);
                        sbone.Append(close);
                    }
                }
            }
            plhRows.Controls.Add(new LiteralControl(sbone.ToString()));
        }


        StringBuilder sbotwo = new StringBuilder();
        List<Location> ServiceLocations2 = DataService.Provider.GetLocations("1S");
        if (ServiceLocations2 != null)
        {
            string start = "<div class='row' style='margin:8px;'>";
            string mid = @"  <div class='col-xs-12 col-sm-4'>
                                <div class='box-style-1 thinblock '>
                                    <div class='text-left' style='background-color: rgba(255,255,255,0.1);'>";
            string close = @"       </div>
                                </div>
                            </div>";
            string end = "</div>";
            int count = 0;
            foreach (var item in ServiceLocations2)
            {
                count++;
                if (count == 1)
                {
                    string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                    sbotwo.Append(start);
                    sbotwo.Append(mid);
                    sbotwo.Append(body);
                    sbotwo.Append(close);
                }
                else
                {
                    if (count == 3)
                    {
                        string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                        //sbone.Append(start);
                        sbotwo.Append(mid);
                        sbotwo.Append(body);
                        sbotwo.Append(close);
                        sbotwo.Append(end);
                        count = 0;
                    }
                    else
                    {
                        string body = string.Format(@"<h5>{0} </h5>
                                <p>{1}</p>
                                <p>Sales : {2}</p>
                                <p>Services : {3}
                                <p>Spare Parts : {4}</p>", item.Name, item.Address, item.SalesPhone, item.ServicePhone, item.PartsPhone);
                        //sbone.Append(start);
                        sbotwo.Append(mid);
                        sbotwo.Append(body);
                        sbotwo.Append(close);
                    }
                }
            }
            plhOneS.Controls.Add(new LiteralControl(sbotwo.ToString()));
        }
    }
}
