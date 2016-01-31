﻿using ENL.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_CarProductList : BaseControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grdCarList.DataSource = DataService.Provider.GetAllCarProducts();
        grdCarList.DataBind();
    }
}