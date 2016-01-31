using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_faq : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<FAQ> list = DataService.Provider.GetAllActiveFAQs();
        if (list != null)
        {
            int cnt = 0;
            StringBuilder sb = new StringBuilder();
            foreach (FAQ item in list)
            {
                cnt++;
                sb.Append(string.Format(@"<div class='panel panel-default'>
                                    <div class='panel-heading'>
                                        <h4 class='panel-title'>
                                            <a data-toggle='collapse' data-parent='#accordion-faq' href='#collapseOne{0}' class='collapsed'>
                                                <i class='fa fa-question-circle pr-10'></i>{0}. {1}
                                            </a>
                                        </h4>
                                    </div>
                                    <div id='collapseOne{0}' class='panel-collapse collapse'>
                                        <div class='panel-body'>
                                            {2}
                                        </div>
                                    </div>
                                </div>", cnt, HtmlRemoval.StripTagsCharArray(item.FaqQuestion), item.FaqAnswer));
            }
            plhFAQ.Controls.Add(new LiteralControl(sb.ToString()));
        }
    }

    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        if (txtemail.Text == "")
        {
            msgBox1.alert("Kindly enter your email!");
            txtemail.Focus();
            return;
        }

        if (txtname.Text == "")
        {
            msgBox1.alert("Kindly enter your name!");
            txtname.Focus();
            return;
        }

        //if (ddlcategory.SelectedValue == "-Select-")
        //{
        //    msgBox1.alert("Kindly enter category for yoour request!");
        //    ddlcategory.Focus();
        //    return;
        //}

        if (txtmessage.Text == "")
        {
            msgBox1.alert("Kindly enter your message!");
            txtmessage.Focus();
            return;
        }
        MailToOffice curr = new MailToOffice();
        curr.Message = txtmessage.Text;
        curr.Subject = ddlcategory.SelectedValue;
        curr.Name = txtname.Text;
        curr.FromEmail = txtemail.Text;
        Util.SendMailToOffice(curr, ConfigurationManager.AppSettings["HMOEmails"].ToString());
        ShowMessage("Request sent successfully!");
    }
}