using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Topic : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            ObjectDataSource1.Select();
            GridView1.DataBind();

        }
        if (Session["name"] != null && Session["role"].ToString() == "Admin")
        {
            Label4.Text = Session["name"].ToString();
            Label5.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource1.InsertParameters["Top_id"].DefaultValue = TextBox2.Text;
            ObjectDataSource1.InsertParameters["Top_name"].DefaultValue = TextBox3.Text;
            ObjectDataSource1.InsertParameters["Crs_id"].DefaultValue = DropDownList2.SelectedValue;
            ObjectDataSource1.Insert();
            GridView1.DataBind();
        }
    }
}