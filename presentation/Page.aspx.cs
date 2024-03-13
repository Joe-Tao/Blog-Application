using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {

            // 将系统时间与13进行比较，来获取问候语
            int Time = System.DateTime.Now.Hour.CompareTo(13);
            string str;
            if (Time > 0)
            {
                str = "下午好！";
            }
            else if (Time < 0)
            {
                str = "上午好！";
            }
            else
            {
                str = "中午好！";
            }
            if (Session["UserName"] == null && Session["UserPwd"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                //this.Label6.Visible = true;


            }
            //this.aa();
            this.Label1.Text = str;
        }
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("yonghu/information.aspx");
    }



    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("yonghu/editInfo.aspx");
    }


    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("yonghu/searchUser.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void lbtnsy_Click(object sender, EventArgs e)
    {
        Response.Redirect("addTiezi.aspx");
    }
    public void aa()
    {
        SqlConnection con = DB.createDB();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tb_Content", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "tb_Content");
        this.gvlt.DataSource = ds;
        this.gvlt.DataKeyNames = new string[] { "ContId" };
        this.gvlt.DataBind();
        con.Close();
    }
    protected void gvlt_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvlt.PageIndex = e.NewPageIndex;
        this.aa();
    }
    protected void gvlt_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (Session["UserName"].ToString() == "Tsoft" && Session["UserPwd"].ToString() == "111")
            {
                string ContId = this.gvlt.DataKeys[e.RowIndex].Value.ToString();
                SqlConnection con = DB.createDB();
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from tb_Content where ContId='" + ContId + "'", con);
                cmd.ExecuteNonQuery();


                //this.aa();
                Response.Write("<script>alert('删除成功！');</script>");
                this.gvlt.EditIndex = -1;
            }
            else
            {   
                Response.Write("<script>alert('你没有权限删除此帖，必须是管理员才能进行删除！');location='javascript:history.go(-1)'</script>");

            }
        }
    }
}