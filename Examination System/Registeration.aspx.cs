using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registeration : System.Web.UI.Page
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
            Loginlayer.insert_user(TextBox1.Text, TextBox2.Text, DropDownList1.SelectedItem.ToString());
            Session.Add("user_name", TextBox1.Text);

            if (DropDownList1.SelectedItem.ToString() == "Student")
                Response.Redirect("Register_Student.aspx");

            if (DropDownList1.SelectedItem.ToString() == "Instructor")
                Response.Redirect("Register_instructor.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {


    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}