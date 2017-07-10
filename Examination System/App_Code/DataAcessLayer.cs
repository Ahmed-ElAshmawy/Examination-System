using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for DataAcessLayer
/// </summary>
public class DataAcessLayer
{
    static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASP_project"].ToString());
    static SqlCommand cmd = new SqlCommand();
    static public DataSet RunSelect(string s)
    {
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = s;
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter adb = new SqlDataAdapter();
        adb.SelectCommand = cmd;
        adb.Fill(ds);
        return ds;
    }
    static public int RunDMLSp(string sspname, SqlParameter[] parm)
    {
        con.Close();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = sspname;
        cmd.Connection = con;
        cmd.Parameters.Clear();
        con.Open();
        cmd.Parameters.AddRange(parm);
        int affected = cmd.ExecuteNonQuery();
        con.Close();
        return affected;
    }

    /*static public int RunDML(string s)
    {
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = s;
        cmd.Connection = con;
        con.Open();
        int affected = cmd.ExecuteNonQuery();
        con.Close();
        return affected;
    }*/

    static public DataSet RunSelectLogin(string s, SqlParameter[] parm)
    {
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = s;
        cmd.Connection = con;
        DataSet ds = new DataSet();
        SqlDataAdapter adb = new SqlDataAdapter();
        cmd.Parameters.Clear();
        cmd.Parameters.AddRange(parm);
        adb.SelectCommand = cmd;
        adb.Fill(ds);
        return ds;
    }
}