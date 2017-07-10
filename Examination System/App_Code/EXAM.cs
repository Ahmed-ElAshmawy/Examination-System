using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EXAM
/// </summary>
public class EXAM
{
    static DataSet ds = new DataSet();
    public static DataSet EXAM_show(int Ex_id)
    {
        string str = "get_questions";
        SqlParameter[] parm = { new SqlParameter("@Ex_id", Ex_id) };
        ds = DataAcessLayer.RunSelectLogin(str, parm);
        return ds;
    }
    public static int Genrate_Exam(string Crs_name,int MSQ,int TF,int Ex_id,int Ex_duration)
    {
        string str = "Generate_Exam ";
        SqlParameter[] parm = { new SqlParameter("@Crs_name", Crs_name), new SqlParameter("@MSQ", MSQ), new SqlParameter("@TF", TF), new SqlParameter("@Ex_id", Ex_id), new SqlParameter("@Ex_duration", Ex_duration) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static int Exam_answers(string St_name, int Ex_id, string o1, string o2, string o3, string o4, string o5, string o6, string o7, string o8, string o9, string o10)
    {
        string str = "Exam_Ans ";
        SqlParameter[] parm = { new SqlParameter("@St_name", St_name), new SqlParameter("@Ex_id", Ex_id), new SqlParameter("@ans1", o1), new SqlParameter("@ans2", o2), new SqlParameter("@ans3", o3), new SqlParameter("@ans4", o4), new SqlParameter("@ans5", o5), new SqlParameter("@ans6", o6), new SqlParameter("@ans7", o7),new SqlParameter("@ans8", o8), new SqlParameter("@ans9", o9), new SqlParameter("@ans10", o10) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static DataSet EXAM_Id(int Crs_id)
    {
        string str = "select top(1) Ex_id  from Exam where Crs_id= "+ Crs_id+ " order by NEWID()";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static int Exam_Correction(string St_name, int Ex_id)
    {
        string str = "exam_correction ";
        SqlParameter[] parm = { new SqlParameter("@St_name", St_name), new SqlParameter("@Ex_id", Ex_id)};
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static DataSet SelectAll_Exams()
    {
        string str = "select Ex_id from Exam";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Student_Result(int St_id)
    {
        string str = "select c.Crs_name,sci.grad from Std_Crs_Ins as sci , Course as c where sci.St_id=" + St_id.ToString() + " and sci.Crs_id=c.Crs_id";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

}