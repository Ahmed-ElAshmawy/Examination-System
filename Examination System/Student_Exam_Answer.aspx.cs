using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student_Exam_Answer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Instructor")
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
        GridView1.Enabled = false;
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
 

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Enabled = true;
    }
}