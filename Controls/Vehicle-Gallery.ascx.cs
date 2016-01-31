using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_Vehicle_Gallery : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Gallery> list = DataService.Provider.GetAllGalleries();
        if (list != null)
        {
            int cnt = 0;
            StringBuilder sb = new StringBuilder();
            foreach (Gallery item in list)
            {
                cnt++;
                sb.Append(string.Format(@"
                <div>
                    <img u='image' src='images/Gallery/{0}' title='{1}'>
                    <div u='caption' t='MCLIP|B' t2='T' style='position: absolute; top: 430px; left: 50px; width: 600px; height: 50px;'>
                            <div style='position: absolute; top: 0px; left: 0px; width: 600px; height: 50px; background-color: Black; opacity: 0.3; filter: alpha(opacity=30);'>
                            </div>
                            <div style='position: absolute; top: 0px; left: 0px; width: 600px; height: 50px; color: White; font-size: 16px; font-weight: bold; line-height: 50px; text-align: center;'>
                                <a href='{2}' class='gallerylink'>{1}</a>
                            </div>
                     </div>
                     <img u='thumb' src='images/Gallery/thumb/{3}' alt='Toyota Avensis' />
                </div>", item.ImageFile, item.ProductName,item.ProductLink,item.thumbImage));
            }
            plhGalleryContent.Controls.Add(new LiteralControl(sb.ToString()));
        }
    }
}