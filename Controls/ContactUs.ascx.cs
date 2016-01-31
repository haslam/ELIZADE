using ENL.Data;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ContactUs : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCommand_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (txtemail.Text == "")
            {
                msgBox1.alert("Kindly enter subject for your request!");
                txtemail.Focus();
                return;
            }

            //if (txtname.Text == "")
            //{
            //    msgBox1.alert("Kindly enter your name!");
            //    txtname.Focus();
            //    return;
            //}

            if (txtsubject.Text == "")
            {
                msgBox1.alert("Kindly enter subject for your request!");
                txtsubject.Focus();
                return;
            }

            if (txtmessage.Text == "")
            {
                msgBox1.alert("Kindly enter your message!");
                txtmessage.Focus();
                return;
            }
            MailToOffice curr = new MailToOffice();
            curr.Message = txtmessage.Text;
            curr.Subject = txtsubject.Text;
            //curr.Name = txtname.Text;
            curr.FromEmail = txtemail.Text;
            Util.SendMailToOffice(curr, ConfigurationManager.AppSettings["elizade"].ToString());
            ShowMessage("Request sent successfully!");
        }
    }
}