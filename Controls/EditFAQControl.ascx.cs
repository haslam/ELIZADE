using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EditFAQControl : BaseControl
{
    string bid = ""; string action = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["action"] != null)
        {
            action = Request.Params["action"];
            if (int.Parse(action) == 1)
            {
                bid = Request.Params["pid"];
            }
        }
        if (Page.IsPostBack == false)
        {
            if (bid != "")
            {
                FAQ dnd = DataService.Provider.GetFAQById(int.Parse(bid));
                txtQuestion.Text = dnd.FaqQuestion;
                txtAnswer.Text = dnd.FaqAnswer;
                chkActive.Checked = (bool)dnd.Active;
                BtnCommand.Text = " Update FAQ";
            }
        }
    }
    protected void BtnCommand_Click(object sender, EventArgs e)
    {
        int result = -1;
        try
        {
            if (Request.Params["action"] != null)
            {
                action = Request.Params["action"];
                if (int.Parse(action) == 1)
                {
                    bid = Request.Params["pid"];
                    FAQ aston = new FAQ();
                    aston.Id = int.Parse(bid);
                    aston.FaqQuestion = txtQuestion.Text;
                    aston.FaqAnswer = txtAnswer.Text;
                    aston.Active = chkActive.Checked;
                    result = DataService.Provider.UpdateFAQ(aston);
                }
                else
                {

                }
            }
        }
        catch (Exception ex)
        {
            ShowError(ex.Message);
        }
        if (result > 0)
        {
            Response.Redirect(Util.AdminUrl + "faq-list", true);
        }
    }
}