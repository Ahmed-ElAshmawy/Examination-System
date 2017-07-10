﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;

public partial class Report5 : System.Web.UI.Page
{
    ReportDocument rpt = new ReportDocument();
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=SQL_Project;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var cmd = new SqlCommand("ins_crs_stud", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@Ins_id", DropDownList1.SelectedValue);
        con.Open();
        var ad = new SqlDataAdapter(cmd);
        var ds = new R4();
        ad.Fill(ds);
        con.Close();
        rpt.Load(Server.MapPath(@"~/Report/Ins_Course_Student.rpt"));
        rpt.SetDataSource(ds);
        rpt.SetParameterValue("@Ins_id", DropDownList1.SelectedValue);
        CrystalReportViewer1.ReportSource = rpt;
        CrystalReportViewer1.DataBind();

    }
}