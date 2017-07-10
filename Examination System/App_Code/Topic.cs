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
public class Topic
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAll_Topics()
    {
        string str = "select * from Topic";
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }

    public static int Delete_Topic(int Top_id)
    {
        string str = "del_topic ";
        SqlParameter[] parm = { new SqlParameter("@Top_id", Top_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public int Update_Topic(int Top_id, string Top_name, int Crs_id)
    {
        string str = "update_topic  ";
        SqlParameter[] parm = { new SqlParameter("@Top_id", Top_id), new SqlParameter("@Top_name", Top_name), new SqlParameter("@Crs_id ", Crs_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }

    public static int insert_Topic(int Top_id, string Top_name, int Crs_id)
    {
        string str = "ins_topic ";
        SqlParameter[] parm = { new SqlParameter("@Top_id", Top_id), new SqlParameter("@Top_name", Top_name), new SqlParameter("@Crs_id ", Crs_id) };
        int affected = DataAcessLayer.RunDMLSp(str, parm);
        return affected;
    }
    public static DataSet topic_crs(int crs_id)
    {
        DataSet ds = new DataSet();
        string str = "select * from topic where Crs_id=" + crs_id;
        ds = DataAcessLayer.RunSelect(str);
        return ds;
    }
}