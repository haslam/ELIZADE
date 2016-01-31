using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_LoginControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        string retUrl = "";
        try
        {
            AuthenticationModule am = new AuthenticationModule();
            if (am != null)
            {
                int result = am.AuthenticateUser(txtUsername.Text, txtPassword.Text, chkrememberme.Checked);
                if (result > 0)
                {
                    if (Request.Params["ru"] != null)
                    {
                        retUrl = Request.QueryString["ru"];
                        Response.Redirect(Util.BaseSiteUrl + "a.aspx?p=" + retUrl, true);
                    }
                    else
                    {
                        Response.Redirect(Util.BaseSiteUrl + "a.aspx?p=admin-home", true);
                    }
                }
                else if (result < 0)
                {
                    this.lblError.Text = "You have not activated you account,  Kindly check your email and click on the activate this account link.";
                    this.lblError.Visible = true;
                    ViewState["Tries"] = System.Convert.ToInt32(ViewState["Tries"]) + 1;
                    if (System.Convert.ToInt32(ViewState["Tries"]) > 3)
                    {
                        Response.Redirect("~/Denied.aspx?times=" + ViewState["Tries"].ToString(), true);
                    }
                }
                else
                {
                    this.lblError.Text = "Invalid user name or password.";
                    this.lblError.Visible = true;
                    // Otherwise, increment number of tries.
                    ViewState["Tries"] = System.Convert.ToInt32(ViewState["Tries"]) + 1;
                    if (System.Convert.ToInt32(ViewState["Tries"]) > 3)
                    {
                        Response.Redirect("Denied.aspx?times=" + ViewState["Tries"].ToString(), true);
                    }
                }
            }
            else
            {
                throw new Exception("Modules Not Supported on the Server");
            }
        }
        catch (Exception ex)
        {
            this.lblError.Text = ex.Message;
        }
    }
}