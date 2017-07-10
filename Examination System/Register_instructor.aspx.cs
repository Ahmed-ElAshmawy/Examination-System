using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_instructor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            Instructor.insert_Instructor(int.Parse(TextBox6.Text), TextBox7.Text, int.Parse(TextBox8.Text), int.Parse(DropDownList3.SelectedValue), Session["user_name"].ToString());
            Response.Redirect("AdminProfile.aspx");
        }
    }
}