using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Exam_Criteria : System.Web.UI.Page
{
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
        if (IsValid)
        {
            EXAM.Genrate_Exam(DropDownList1.SelectedItem.ToString(),int.Parse(TextBox2.Text),int.Parse(TextBox3.Text),int.Parse(TextBox4.Text),int.Parse(TextBox5.Text));
        }
    }
}