using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using ENL.Data;

public partial class Controls_UsersControl : ENL.Data.BaseControl
{
    string username = "";
    string action = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = ":: User(s) Maintenance ::";

        // Determine unique action for Update
        if (Request.Params["username"] != null)
        {
            username = Request.Params["username"];
        }
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
                BtnCommand.Text = "Update User";
        }

        if (Page.IsPostBack == false)
        {

            if (username != "")
            {
                // Obtain a single row of event information
                UserDetail dr = DataService.Provider.getUserDetailByUsername(username);

                txtUserName.Text = (string)dr.UserName;


                txtFirstName.Text = dr.FirstName;
                txtLastName.Text = dr.LastName;
                txtJobTitle.Text = dr.JobTitle;
                ddlTitle.SelectedValue = (string)dr.Title;
                chkActive.Checked = Convert.ToBoolean(dr.IsActive);
                txtUserName.Enabled = false;
                ddlTheme.SelectedValue = dr.WebTheme;

            }
        }

    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        try
        {
            if (Request.Params["username"] != null)
            {
                username = Request.Params["username"];
            }
            if (Request.Params["action"] != null)
            {
                action = Request.Params["action"];
            }
            if (int.Parse(action) == 0)
            {
                if ((txtUserName.Text != string.Empty) && (txtPassword.Text != string.Empty) && (txtFirstName.Text != string.Empty) && (txtLastName.Text != string.Empty) && (!Users.Exist(txtUserName.Text)))
                {
                    UserDetail supplier = new UserDetail();
                    supplier.UserName = (txtUserName.Text == string.Empty) ? string.Empty : txtUserName.Text;
                    supplier.Password = Util.Encrypt(txtPassword.Text);
                    supplier.FirstName = (txtFirstName.Text == string.Empty) ? string.Empty : txtFirstName.Text;
                    supplier.LastName = (txtLastName.Text == string.Empty) ? string.Empty : txtLastName.Text;
                    supplier.JobTitle = (txtJobTitle.Text == string.Empty) ? string.Empty : txtJobTitle.Text;
                    supplier.IsActive = (chkActive.Checked == true) ? 1 : 0;
                    supplier.WebTheme = ddlTheme.SelectedValue;
                    supplier.Title = ddlTitle.SelectedValue;
                    int me = DataService.Provider.AddUserDetail(supplier);
                    if (me > 0)
                    {// Redirect back to the portal home page
                        Response.Redirect("~/a.aspx?p=user-list");
                    }
                    else
                    {
                        ShowWarningMessage("Error Creating User!");
                    }
                }
                else
                {
                    ShowWarningMessage("User Record Exists!");
                }
            }
            else if (int.Parse(action) == 1)
            {
                UserDetail supplier = new UserDetail();
                supplier.UserName = (txtUserName.Text == string.Empty) ? string.Empty : txtUserName.Text;
                supplier.Password = (txtPassword.Text == string.Empty) ? string.Empty : Util.Encrypt(txtPassword.Text);
                supplier.FirstName = (txtFirstName.Text == string.Empty) ? string.Empty : txtFirstName.Text;
                supplier.LastName = (txtLastName.Text == string.Empty) ? string.Empty : txtLastName.Text;
                supplier.JobTitle = (txtJobTitle.Text == string.Empty) ? string.Empty : txtJobTitle.Text;
                supplier.WebTheme = ddlTheme.SelectedValue;
                supplier.IsActive = (chkActive.Checked == true) ? 1 : 0;
                supplier.Title = ddlTitle.SelectedValue;
               int me = DataService.Provider.UpdateUserDetail(supplier);
                if (me > 0)
                {// Redirect back to the portal home page
                    Response.Redirect("~/a.aspx?p=user-list");
                }
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message); ;
        }

    }
}
