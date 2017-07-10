using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Answers_After_generation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Student")
        {
            Label1.Text = Session["id"].ToString();
            Label2.Text = Session["name"].ToString();
            Label3.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }
}