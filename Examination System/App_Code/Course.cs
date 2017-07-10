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
public class Course
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Courses()
    {
        string str = "select * from Course";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static int Delete_Course(int Crs_id)
    {
        string str = "del_course ";
        SqlParameter[] parm = { new SqlParameter("@Crs_id", Crs_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public int Update_Course(int Crs_id, string Crs_name, int Crs_duration)
    {
        string str = "update_course  ";
        SqlParameter[] parm = { new SqlParameter("@Crs_id", Crs_id), new SqlParameter("@Crs_name", Crs_name), new SqlParameter("@Crs_duration ", Crs_duration) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static int insert_Course(int Crs_id, string Crs_name, int Crs_duration)
    {
        string str = "ins_course ";
        SqlParameter[] parm = { new SqlParameter("@Crs_id", Crs_id), new SqlParameter("@Crs_name", Crs_name), new SqlParameter("@Crs_duration ", Crs_duration) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static DataSet Corrective_Exam_ByCrs(int Crs_id)
    {
        string str = "select s.St_id ID, s.St_name [Student Name] from Std_Crs_Ins sci,Student s where sci.Crs_id=" + Crs_id.ToString() + " and s.St_id=sci.St_id and sci.grad<5";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static DataSet Question_Courses(int Crs_id)
    {
        string str = "select Q_body from Question where Crs_id=" + Crs_id.ToString();
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static DataSet Select_Course_Grades()
    {
        string str = "select c.Crs_name, AVG(grad) [Avg Grade] from Std_Crs_Ins sci, Course c  where sci.Crs_id=c.Crs_id group by sci.Crs_id ,c.Crs_name";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Question_Data(int Crs_id)
    {
        string str = "select * from Question,Std_Ex_Ques where Std_Ex_Ques.Q_id=Question.Q_id and Question.Crs_id="+Crs_id+"order by Question.Q_id desc";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
}