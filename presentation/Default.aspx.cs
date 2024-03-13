using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
       
        string user = Login1.UserName.Replace("'", "");
        string pass = Login1.Password.Replace("'", "");
        string sql = "select count(*) from tb_Users where UserName = @user and UserPwd = @pwd";
        SqlParameter[] param = {
        new SqlParameter("@user",SqlDbType.VarChar),
        new SqlParameter("@pwd",SqlDbType.VarChar)
        };
        param[0].Value = user;
        param[1].Value = pass;
        int usercount = ((int)(sqlHelp.ExecuteScalar(sqlHelp.ConnectionStringLocalTransaction, CommandType.Text, sql, param)));
        if (usercount > 0)
        {
            e.Authenticated = true;
            Session["UserName"] = user;
            Session["UserPwd"] = pass;
        }
        else
            e.Authenticated = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}