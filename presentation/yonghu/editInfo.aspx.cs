using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonghu_editInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {

            if (Session["UserName"] == null && Session["UserPwd"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                string UserName = Session["UserName"].ToString();
                string UserPwd = Session["UserPwd"].ToString();
                SqlConnection con = DB.createDB();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                con.Open();
                cmd.CommandText = "select * from tb_Users where UserName='" + UserName + "'and UserPwd='" + UserPwd + "'";
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();

                this.txtname.Text = sdr["UserName"].ToString();
                if (this.txtname.Text == "Tsoft")
                {
                    this.txtname.Enabled = false;
                    this.txtpwd.Enabled = false;

                }
                if (this.txtname.Text != "Tsoft")
                {
                    this.txtname.Enabled = true;
                    this.txtpwd.Enabled = true;
                }
                this.txtpwd.Text = sdr.GetString(2);
                this.txtywname.Text = sdr.GetString(3);
                this.txtemail.Text = sdr.GetString(4);
                this.imgtouxiang.ImageUrl = sdr.GetString(5);
                con.Close();
                this.touxiangbind();
            }
        }
    }

    public void touxiangbind()
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




    protected void Button1_Click(object sender, EventArgs e)
    {
        string UserName = Session["UserName"].ToString();
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update tb_Users set UserName='" + this.txtname.Text + "',UserPwd='" + this.txtpwd.Text + "',Ename='" + this.txtywname.Text + "',Email='" + this.txtemail.Text + "',Logo='" + this.ddltouxiang.SelectedItem.Text.ToString() + "' where UserName='" + UserName + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('修改成功！');</script>");
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Page.aspx");
    }

    protected void ddltouxiang_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.imgtouxiang.ImageUrl = this.ddltouxiang.SelectedValue;
    }



    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghu/information.aspx");
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghu/editInfo.aspx");
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghu/searchUser.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addTiezi.aspx");
    }
}