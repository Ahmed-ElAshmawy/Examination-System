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
public class Department
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Departments()
    {
        string str = "select * from Department";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
    public int Update_Department(int Dept_id, string Dept_name, int Mang_id)
    {
        string str = "update_dept ";
        SqlParameter[] parm = { new SqlParameter("@Dept_id", Dept_id), new SqlParameter("@Dept_name", Dept_name), new SqlParameter("@Mang_id ", Mang_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int Delete_Department(int Dept_id)
    {
        string str = "del_dept ";
        SqlParameter[] parm = { new SqlParameter("@Dept_id", Dept_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static int insert_Department(int Dept_id, string Dept_name, int Mang_id)
    {
        string str = "ins_dept ";
        SqlParameter[] parm = { new SqlParameter("@Dept_id", Dept_id), new SqlParameter("@Dept_name", Dept_name), new SqlParameter("@Mang_id ", Mang_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static DataSet Departments_Manegers()
    {
        string str = " select d.Dept_id as[Department ID], d.Dept_name As[Department Name], i.Ins_name as [Manager Name] from Department d, Instructor i where i.Ins_id= d.Mang_id";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

}