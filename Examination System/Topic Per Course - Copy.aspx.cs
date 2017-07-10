using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Topic_Per_Course : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null && Session["role"].ToString() == "Student")
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["role"].ToString();
        }
        else
            Response.Redirect("AnonymousProfile.aspx");
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        if (int.Parse(DropDownList1.SelectedValue)!=0)
        {
            ds = EXAM.EXAM_Id(int.Parse(DropDownList1.SelectedValue));
            Session.Add("EX_ID", ds.Tables[0].Rows[0].ItemArray[0].ToString());
            Response.Redirect("Generate_EXAM.aspx");
        }        
    }
}