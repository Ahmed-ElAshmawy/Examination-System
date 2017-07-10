using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Change_Pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label_Result.Visible = false;
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button_Change_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int x;
            x = Loginlayer.Change_password(TextBox_userName.Text, TextBox_oldPass.Text, TextBox_NewPass.Text);
            if (x == 1)
            {
                Label_Result.Text = "your password was changed successfully";
                Label_Result.ForeColor = System.Drawing.Color.Green;
                Label_Result.Visible = true;
            }
            else
            {
                Label_Result.Text = "your acount are not valid, enter user name and password again";
                Label_Result.ForeColor = System.Drawing.Color.Red;
                Label_Result.Visible = true;
            }
        }
        
    }
}