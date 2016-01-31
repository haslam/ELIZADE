using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditSubscriptionCTRL : System.Web.UI.UserControl
{
    string bid = "";
    string ERROR_MSG = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["pid"] != null)
        {
            bid = Request.Params["pid"];
            EmailNewsLetter ban = DataService.Provider.GetEmailNewsLettersById(int.Parse(bid));
            if (ban != null)
            {
                lblId.Text = ban.ID.ToString();
                txtEmail.Text = ban.Email;
                txtName.Text = ban.Name;
            }
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        EmailNewsLetter banner = new EmailNewsLetter();
        banner.ID = int.Parse(lblId.Text.Trim());
        banner.Name = txtName.Text.Trim();
        banner.Email = txtEmail.Text.Trim();
        int result = DataService.Provider.UpdateEmailNewsLetter(banner);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "newsletter", true);
        }

    }
}