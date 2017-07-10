using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tpoic_Insert : System.Web.UI.Page
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (IsValid)
        {
            ObjectDataSource2.InsertParameters["Top_id"].DefaultValue = TextBox2.Text;
            ObjectDataSource2.InsertParameters["Top_name"].DefaultValue = TextBox3.Text;
            ObjectDataSource2.InsertParameters["Crs_id"].DefaultValue = DropDownList1.SelectedValue;
            ObjectDataSource2.Insert();
            GridView1.DataBind();
        }
    }
}