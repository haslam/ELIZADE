using ENL.Data;
using ENL.Data.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Context.User.Identity.IsAuthenticated)
        {
            Response.Redirect("~/p.aspx?p=login");
        }
        else
        {
            if (Session["UserName"] != null)
            {
                UserDetail selcart = DataService.Provider.getUserDetailByUsername(Session["UserName"].ToString());
                if (selcart != null)
                {
                    LastName.Text = selcart.LastName;
                    OtherNames.Text = selcart.FirstName;
                }
                GetModulesLinks();
            }
            else { Response.Redirect("~/p.aspx?p=login"); }
        }
    }

    private void GetModulesLinks()
    {
        Hashtable ht = new Hashtable();
        List<ModulesAction> moduleactions = new List<ModulesAction>();
        List<Module> modules = new List<Module>();
        if (Session["UserRole"] != null)
        {
            if (Session["UserRole"].ToString() == "System Administrator") { modules = DataService.Provider.getAllModules(); }
            else
            {
                modules = DataService.Provider.getAllModulesByRole(Session["UserRole"].ToString());
                moduleactions = DataService.Provider.getAllModuleActionsPermmitedByRole(Session["UserRole"].ToString());
                ht = Util.GroupActions(moduleactions);
            }
            if (moduleactions != null)
            {
                plhToolbar.Controls.Clear();
                string upper = @"<div class='toolbar'>
                                        <div class='toolbarLeft'>
                                        </div>
                                        <div class='toolbarContent'>";
                string lower = @"       </div>
                                        <div class='toolbarRight'>
                                        </div>
                                        <div class='clear'>
                                        </div>
                                </div>";
                int met = 45;
                foreach (string item in ht.Keys)
                {
                    StringBuilder middle = new StringBuilder();
                    List<ModulesAction> actiongroup = (List<ModulesAction>)ht[item];
                    foreach (ModulesAction em in actiongroup)
                    {
                        middle.Append(@"<a href='" + Util.BaseSiteUrl + "a.aspx?p=" + em.ModuleActionUrl.ToLower() + "'><img src='AdminAssets/images/" + (met++) + ".png' alt='' />" + em.ModuleActionName + "</a> |");
                    }
                    plhToolbar.Controls.Add(new LiteralControl(upper + middle.ToString() + lower));
                    middle = null;
                }
            }

            if (modules != null)
            {
                //modules.Sort();
                plhModuleLinks.Controls.Clear();
                foreach (Module item in modules)
                {
                    plhModuleLinks.Controls.Add(new LiteralControl(@"<a href='" + Util.BaseSiteUrl + "a.aspx?p=" + item.ModuleID.ToLower() + "'><img src='AdminAssets/images/" + item.ModuleImage + "' alt='' />" + item.ModuleName + "</a>"));
                }
            }
        }
    }
}
