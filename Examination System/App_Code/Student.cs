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
public class Student
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Students()
    {
        string str = "select * from student";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public int Update_Student(int St_id, string St_name, int St_age, int Dept_id)
    {
        string str = "update_std ";
        SqlParameter[] parm = { new SqlParameter("@St_id", St_id), new SqlParameter("@St_name", St_name), new SqlParameter("@St_age ", St_age), new SqlParameter("@Dept_id ", Dept_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int insert_Student(int St_id, string St_name, int St_age, int Dept_id,string St_U_N)
    {
        string str = "insert_student ";
        SqlParameter[] parm = { new SqlParameter("@St_id", St_id), new SqlParameter("@St_name", St_name), new SqlParameter("@St_age ", St_age), new SqlParameter("@Dept_id ", Dept_id), new SqlParameter("@St_U_N", St_U_N) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int Delete_Student(int St_id)
    {
        string str = "del_student ";
        SqlParameter[] parm = { new SqlParameter("@St_id", St_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static DataSet select_studentcourse(int id)
    {
        DataSet ds = new DataSet();
        string str = "select Course.* from Std_Crs_Ins, Course where course.Crs_id = Std_Crs_Ins.Crs_id and Std_Crs_Ins.St_id =" + id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet select_specificstudent(int id)
    {
        DataSet ds = new DataSet();
        string str = "select * from Student where St_id=" + id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static DataSet Exam_number(int St_id)
    {
        string str = "select Distinct Ex_id from Std_Ex_Ques where St_id=" + St_id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static DataSet Student_Exam(int St_id, int Ex_id)
    {
        string str = "select seq.St_ans [Student Answer] , q.Q_mans [Model Answer] from Std_Ex_Ques as seq,Question as q where q.Q_id=seq.Q_id and seq.St_id=" + St_id.ToString() + " and seq.Ex_id=" + Ex_id.ToString();
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static DataSet Student_Exam_answers(int St_id, int Ex_id)
    {
        string str = "select seq.St_ans [Student Answer] from Std_Ex_Ques as seq,Question as q where q.Q_id=seq.Q_id and seq.St_id=" + St_id.ToString() + " and seq.Ex_id=" + Ex_id.ToString();
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Student_Result(int St_id)
    {
        string str = "select c.Crs_name,sci.grad from Std_Crs_Ins as sci , Course as c where sci.St_id=" + St_id.ToString() + " and sci.Crs_id=c.Crs_id";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Exam_students_by_date(DateTime d)
    {
        string str = "select s.[St_id] as [Student ID],s.[St_name] AS [Student Name],d.[Ex_id] as [Exam ID] from Std_Ex_Ques d,Student s where d.St_id=s.St_id and Ex_date='"+d+"'";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Exam_date()
    {
        string str = "select Ex_date from Std_Ex_Ques";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet std_correctiveExam(int dept_id)
    {
        DataSet ds = new DataSet();
        string str = "select student.St_id ID,St_name [Student Name] from Student,Std_Crs_Ins where Student.St_id=Std_Crs_Ins.St_id and Std_Crs_Ins.grad<5 and Student.Dept_id=" + dept_id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
}