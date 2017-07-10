using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Instructor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            ObjectDataSource1.Select();
            GridView2.DataBind();

        }
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label5.Text = Session["name"].ToString();
            Label6.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource1.InsertParameters["Ins_id"].DefaultValue = TextBox_insid.Text;
            ObjectDataSource1.InsertParameters["Ins_name"].DefaultValue = TextBox_insname.Text;
            ObjectDataSource1.InsertParameters["Ins_salary"].DefaultValue = TextBox_sal.Text;
            ObjectDataSource1.InsertParameters["Dept_id"].DefaultValue = DropDownList2.SelectedValue;
            ObjectDataSource1.InsertParameters["Ins_U_N"].DefaultValue = TextBox3.Text;
            ObjectDataSource1.Insert();
            GridView2.DataBind();
        }
    }
}