using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_AddFAQControl : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        FAQ curr = new FAQ();
        curr.FaqAnswer = txtAnswer.Text;
        curr.FaqQuestion = txtQuestion.Text;
        curr.Active = chkActive.Checked;
        int result = DataService.Provider.AddFAQ(curr);
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "faq-list", true);
        }
    }
}