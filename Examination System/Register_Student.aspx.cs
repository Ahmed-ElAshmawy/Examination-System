using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Student.insert_Student(int.Parse(TextBox3.Text), TextBox4.Text, int.Parse(TextBox5.Text), int.Parse(DropDownList2.SelectedValue), Session["user_name"].ToString());
            Response.Redirect("AdminProfile.aspx");
        }
    }
}