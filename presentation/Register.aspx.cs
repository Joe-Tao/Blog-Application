using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = DB.createDB();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            string sqlstr = "select * from tb_touxiang";
            SqlDataAdapter myda = new SqlDataAdapter(sqlstr, con);
            DataSet myds = new DataSet();
            myda.Fill(myds, "tb_touxiang");
            this.ddltouxiang.DataSource = myds.Tables["tb_touxiang"];
            this.ddltouxiang.DataTextField = "Image";
            this.ddltouxiang.DataBind();
            this.imgtouxiang.ImageUrl = this.ddltouxiang.SelectedValue;
            con.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.txtname.Text != "Tsoft")
        {
            SqlConnection con = DB.createDB();
            con.Open();
            SqlTransaction st = con.BeginTransaction();//通过SqlConnection的BeginTransaction方法创建名为st的对象Transaction
            SqlCommand cmd = con.CreateCommand();
            cmd.Transaction = st;////将SqlTransaction对象分配给SqlCommand对象的Transaction属性


            try
            {
                //向用户表中插入注册信息
                cmd.CommandText = "insert into tb_Users(UserName, UserPwd, Ename, Email, Logo) values('" + this.txtname.Text + "','" + this.txtpwd.Text + "','" + this.txtyname.Text + "','" + this.txtemail.Text + "','" + this.ddltouxiang.SelectedItem.Text.ToString() + "')";
                cmd.ExecuteNonQuery();
                st.Commit();//提交事物
            }
            catch
            {
                Response.Write("<script language='javascript'>alert('注册失败！');location='javascript:history.go(-1)'</script>");
                st.Rollback();//回滚事物
            }
            Response.Write("<script language='javascript'>alert('成功注册！');window.location='Default.aspx'</script>");
        }
        else
        {
            Response.Write("<script>alert('很遗憾，请输入其它的用户姓名！');location='javascript:history.go(-1)'</script>");
        }
        //con.Close();
    }

    protected void ddltouxiang_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.imgtouxiang.ImageUrl = this.ddltouxiang.SelectedValue;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}