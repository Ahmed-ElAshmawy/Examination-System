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
public class Instructor
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Instructors()
    {
        string str = "select * from Instructor";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public int Update_Instructor(int Ins_id, string Ins_name, int Ins_salary, int Dept_id)
    {
        string str = "update_inst ";
        SqlParameter[] parm = { new SqlParameter("@Ins_id", Ins_id), new SqlParameter("@Ins_name", Ins_name), new SqlParameter("@Ins_salary ", Ins_salary), new SqlParameter("@Dept_id ", Dept_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int Delete_Instructor(int Ins_id)
    {
        string str = "del_inst ";
        SqlParameter[] parm = { new SqlParameter("@Ins_id", Ins_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int insert_Instructor(int Ins_id, string Ins_name, int Ins_salary, int Dept_id,string Ins_U_N)
    {
        string str = "insert_inst ";
        SqlParameter[] parm = { new SqlParameter("@Ins_id", Ins_id), new SqlParameter("@Ins_name", Ins_name), new SqlParameter("@Ins_salary ", Ins_salary), new SqlParameter("@Dept_id ", Dept_id), new SqlParameter("@Ins_U_N", Ins_U_N) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static DataSet Salary_for_All_Instructors()
    {
        string str = "select Ins_id,Ins_name, Ins_salary from Instructor";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet select_ins_course(int crs_id)
    {
        DataSet ds = new DataSet();
        string str = "select Instructor.* from Std_Crs_Ins, Instructor where Instructor.ins_id = Std_Crs_Ins.ins_id and Std_Crs_Ins.Crs_id =" + crs_id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public static DataSet Select_specific_Ins(int Ins_id)
    {
        string str = "select * from Instructor where Ins_id="+ Ins_id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
}