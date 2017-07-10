﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update_Ins_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Instructor")
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["role"].ToString();
            Label3.Text = Session["id"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("AnonymousProfile.aspx");
    }
}