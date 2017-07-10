using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label5.Text = Session["name"].ToString();
            Label6.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button_ins_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource1.InsertParameters["St_id"].DefaultValue = TextBox_sid.Text;
            ObjectDataSource1.InsertParameters["St_name"].DefaultValue = TextBox_stname.Text;
            ObjectDataSource1.InsertParameters["St_age"].DefaultValue = TextBox_stage.Text;
            ObjectDataSource1.InsertParameters["Dept_id"].DefaultValue = DropDownList2.SelectedValue;
            ObjectDataSource1.InsertParameters["St_U_N"].DefaultValue =TextBox3.Text;
            ObjectDataSource1.Insert();
            GridView1.DataBind();
        }
    }
}