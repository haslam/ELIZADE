using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddVehicleCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        CarCategory loc = new CarCategory();       
        loc.Name = txtName.Text;
        loc.Active = chkActive.Checked;
        int result = DataService.Provider.AddCarCategory(loc);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "manage-vehicle", true);
        }
    }
}