using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class addTiezi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            this.lblyhm.Text = Session["UserName"].ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into tb_Content(Subject,Words,UserName,CreateTime,LastAnswerTime,HitCount,IsTop,UpperId) values('" + this.txtbt.Text + "','" + this.txtnr.Text + "','" + this.lblyhm.Text + "','" + System.DateTime.Now.ToString() + "','" + System.DateTime.Now.ToString() + "','0','0','0')";
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！！');</script>");
        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        this.txtbt.Text = "";
        this.txtnr.Text = "";
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Page.aspx");
    }
    //查看用户信息
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("information.aspx");
    }
    //修改用户信息
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("editInfo.aspx");
    }


    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("searchUser.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("Page.aspx");
    }
}