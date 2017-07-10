using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AnonymousProfile : System.Web.UI.Page
{
    protected void Button_Login_Click(object sender, EventArgs e)
    {
        DataSet ds=new DataSet();
        //if (ds.Tables[0].Rows[0].ItemArray[0] != null)
        try
        {
            ds = Loginlayer.Check_user(TextBox_UserName.Text, TextBox_Password.Text);
            int id = (int)ds.Tables[0].Rows[0].ItemArray[0];
            string role = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            string name= ds.Tables[0].Rows[0].ItemArray[2].ToString();
            if (role == "Admin")
            {
                Session.Add("name", name);
                Session.Add("role", role);
                Response.Redirect("AdminProfile.aspx");
            }
            if (role == "Instructor")
            {
                Session.Add("id", id);
                Session.Add("name", name);
                Session.Add("role", role);
                Response.Redirect("Specific Student.aspx");
            }
            if (role == "Student")
            {
                Session.Add("id", id);
                Session.Add("name", name);
                Session.Add("role", role);
                Response.Redirect("Instructors Per Course - Copy.aspx");
            }
        }
        catch
        {
            Label1.Text = "Wrong Password,Try Again";
        }
       
    }
}