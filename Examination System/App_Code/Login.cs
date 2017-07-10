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
public class Loginlayer
{
    static DataSet ds=new DataSet();
    public static DataSet Check_user(string User_Name,string Password)
    {
        string str = "Check_user ";
        SqlParameter[] parm = { new SqlParameter("@User_Name", User_Name), new SqlParameter("@Password", Password) };
        ds = DataAcessLayer.RunSelectLogin(str, parm);
        return ds;
    }

    public static int insert_user(string U_Name, string U_Pass, string U_Role)
    {
        string str = "ins_user ";
        SqlParameter[] parm = { new SqlParameter("@U_Name", U_Name), new SqlParameter("@U_Pass", U_Pass), new SqlParameter("@U_Role ", U_Role)};
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    static public int Change_password(string User_name, string Old_pass, string New_pass)
    {
        string str = "change_password";
        SqlParameter[] parm = { new SqlParameter("@UName", User_name), new SqlParameter("@OldPass", Old_pass), new SqlParameter("@NewPass", New_pass) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;


    }
}