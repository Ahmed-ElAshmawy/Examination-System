using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class StudentEXAMGRADE : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Student")
        {
            Label2.Text = Session["name"].ToString();
            Label3.Text = Session["role"].ToString();
            ds= EXAM.Student_Result(int.Parse(Session["id"].ToString()));
            Label4.Text= ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }
}