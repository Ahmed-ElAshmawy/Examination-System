using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BusinessLayer
/// </summary>
public class Questions
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Questions()
    {
        string str = "select * from Question";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static int Delete_Question(int Q_id)
    {
        string str = "del_ques ";
        SqlParameter[] parm = { new SqlParameter("@Q_id", Q_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static DataSet SelectAll_Questions_info(int Crs_id)
    {
        string str = "select q.* ,s.St_ans ,St_id from Question q,Std_Ex_Ques s where s.Q_id=q.Q_id and Q.Crs_id="+ Crs_id+" order by Q.Q_id desc";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet All_Qus_Data(int Crs_id)
    {
        string str = "Question_Data ";
        SqlParameter[] parm = { new SqlParameter("@Crs_id", Crs_id) };
        ds = DataAcessLayer.RunSelectLogin(str, parm);
        return ds;
    }
}