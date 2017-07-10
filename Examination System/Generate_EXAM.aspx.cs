using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Generate_EXAM : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    string[] ans = new string[10];
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds = EXAM.EXAM_show(int.Parse(Session["EX_ID"].ToString()));
            Question_show();
        }
        
    }
    public void Question_show()
    {

        Label1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        RadioButtonList1.Items.Add(ds.Tables[0].Rows[0].ItemArray[2].ToString());
        RadioButtonList1.Items.Add(ds.Tables[0].Rows[0].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[0].ItemArray[4].ToString() != "")
            RadioButtonList1.Items.Add(ds.Tables[0].Rows[0].ItemArray[4].ToString());

        Label2.Text = ds.Tables[0].Rows[1].ItemArray[1].ToString();
        RadioButtonList2.Items.Add(ds.Tables[0].Rows[1].ItemArray[2].ToString());
        RadioButtonList2.Items.Add(ds.Tables[0].Rows[1].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[1].ItemArray[4].ToString() != "")
            RadioButtonList2.Items.Add(ds.Tables[0].Rows[1].ItemArray[4].ToString());

        Label3.Text = ds.Tables[0].Rows[2].ItemArray[1].ToString();
        RadioButtonList3.Items.Add(ds.Tables[0].Rows[2].ItemArray[2].ToString());
        RadioButtonList3.Items.Add(ds.Tables[0].Rows[2].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[2].ItemArray[4].ToString() != "")
            RadioButtonList3.Items.Add(ds.Tables[0].Rows[2].ItemArray[4].ToString());

        Label4.Text = ds.Tables[0].Rows[3].ItemArray[1].ToString();
        RadioButtonList4.Items.Add(ds.Tables[0].Rows[3].ItemArray[2].ToString());
        RadioButtonList4.Items.Add(ds.Tables[0].Rows[3].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[3].ItemArray[4].ToString() != "")
            RadioButtonList4.Items.Add(ds.Tables[0].Rows[3].ItemArray[4].ToString());

        Label5.Text = ds.Tables[0].Rows[4].ItemArray[1].ToString();
        RadioButtonList5.Items.Add(ds.Tables[0].Rows[4].ItemArray[2].ToString());
        RadioButtonList5.Items.Add(ds.Tables[0].Rows[4].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[4].ItemArray[4].ToString() != "")
            RadioButtonList5.Items.Add(ds.Tables[0].Rows[4].ItemArray[4].ToString());

        Label6.Text = ds.Tables[0].Rows[5].ItemArray[1].ToString();
        RadioButtonList6.Items.Add(ds.Tables[0].Rows[5].ItemArray[2].ToString());
        RadioButtonList6.Items.Add(ds.Tables[0].Rows[5].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[5].ItemArray[4].ToString() != "")
            RadioButtonList6.Items.Add(ds.Tables[0].Rows[5].ItemArray[4].ToString());

        Label7.Text = ds.Tables[0].Rows[6].ItemArray[1].ToString();
        RadioButtonList7.Items.Add(ds.Tables[0].Rows[6].ItemArray[2].ToString());
        RadioButtonList7.Items.Add(ds.Tables[0].Rows[6].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[6].ItemArray[4].ToString() != "")
            RadioButtonList7.Items.Add(ds.Tables[0].Rows[6].ItemArray[4].ToString());

        Label8.Text = ds.Tables[0].Rows[7].ItemArray[1].ToString();
        RadioButtonList8.Items.Add(ds.Tables[0].Rows[7].ItemArray[2].ToString());
        RadioButtonList8.Items.Add(ds.Tables[0].Rows[7].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[7].ItemArray[4].ToString() != "")
            RadioButtonList8.Items.Add(ds.Tables[0].Rows[7].ItemArray[4].ToString());

        Label9.Text = ds.Tables[0].Rows[8].ItemArray[1].ToString();
        RadioButtonList9.Items.Add(ds.Tables[0].Rows[8].ItemArray[2].ToString());
        RadioButtonList9.Items.Add(ds.Tables[0].Rows[8].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[8].ItemArray[4].ToString() != "")
            RadioButtonList9.Items.Add(ds.Tables[0].Rows[8].ItemArray[4].ToString());

        Label10.Text = ds.Tables[0].Rows[9].ItemArray[1].ToString();
        RadioButtonList10.Items.Add(ds.Tables[0].Rows[9].ItemArray[2].ToString());
        RadioButtonList10.Items.Add(ds.Tables[0].Rows[9].ItemArray[3].ToString());
        if (ds.Tables[0].Rows[9].ItemArray[4].ToString() != "")
            RadioButtonList10.Items.Add(ds.Tables[0].Rows[9].ItemArray[4].ToString());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        ans[0] = RadioButtonList1.SelectedValue;
        ans[1] = RadioButtonList2.SelectedValue;
        ans[2] = RadioButtonList3.SelectedValue;
        ans[3] = RadioButtonList4.SelectedValue;
        ans[4] = RadioButtonList5.SelectedValue;
        ans[5] = RadioButtonList6.SelectedValue;
        ans[6] = RadioButtonList7.SelectedValue;
        ans[7] = RadioButtonList8.SelectedValue;
        ans[8] = RadioButtonList9.SelectedValue;
        ans[9] = RadioButtonList10.SelectedValue;
        EXAM.Exam_answers(Session["name"].ToString(), int.Parse(Session["EX_ID"].ToString()), ans[0], ans[1], ans[2], ans[3], ans[4], ans[5], ans[6], ans[7], ans[8], ans[9]);
        EXAM.Exam_Correction(Session["name"].ToString(), int.Parse(Session["EX_ID"].ToString()));
        Response.Redirect("StudentEXAMGRADE.aspx");
    }
}