﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using ENL.Data;
using ENL.Data.Models;

public partial class p : BasePage
{
    string job = "";
    Hashtable ht = new Hashtable();
    protected void Page_Load(object sender, EventArgs e)
    {

        try
      {
            ht = DataService.Provider.getListControls();
            Literal Literal1, Literal2;

            if (Request.Params["p"] != null)
            {
                job = Request.Params["p"].ToString();
                ENL.Data.Models.Page pet = (ENL.Data.Models.Page)ht[job];
                if (pet.Pagetype == 3)
                {
                    cort.Controls.Add(Page.LoadControl("~/Controls/PageNoControl.ascx"));
                }
                else
                {
                    cort.Controls.Add(Page.LoadControl(pet.ControlPath));
                    // Gets a reference to a Label control that not in a ContentPlaceHolder
                    Literal1 = (Literal)Master.FindControl("Literal1");
                    Literal2 = (Literal)Master.FindControl("Literal2");
                    if (Literal1 != null)
                    {
                        Literal1.Text = ((ENL.Data.Models.Page)ht[job]).meta_title;
                    }
                    if (Literal2 != null)
                    {
                        Literal2.Text = @"<meta name='" + ((ENL.Data.Models.Page)ht[job]).meta_title + "' content='" + ((ENL.Data.Models.Page)ht[job]).meta_keywords + @"' />                                
                                  <meta name='author' content='Oriola Enterprises Nigeria Limited' />
                                ";
                    }
                }

            }
            else
            {
                job = "home";
                Response.Redirect("~/p.aspx?p=home", true);
            }
        }
        catch (Exception ex)
        {
            msgBox1.alert(ex.Message);
        }

    }
}