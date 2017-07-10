using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label4.Text = Session["name"].ToString();
            Label5.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource1.InsertParameters["Crs_id"].DefaultValue = TextBox3.Text;
            ObjectDataSource1.InsertParameters["Crs_name"].DefaultValue = TextBox4.Text;
            ObjectDataSource1.InsertParameters["Crs_duration"].DefaultValue = TextBox5.Text;
            ObjectDataSource1.Insert();
            GridView1.DataBind();
        }
    }
}