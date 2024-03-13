using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class yonghu_information : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["UserName"].ToString() != "Tsoft" && Session["UserPwd"].ToString() != "111")
        {
            Response.Write("<script>alert('很抱歉你的权限不够！');location='javascript:history.go(-1)'</script>");
        }
        this.aa();
    }
    public void aa()
    {
        SqlConnection con = DB.createDB();
        SqlDataAdapter sda = new SqlDataAdapter("select * from tb_users where username <> 'tsoft'", con);
        DataSet ds = new DataSet();
        sda.Fill(ds, "tb_Users");
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataKeyNames = new string[] { "UserId" };
        this.GridView1.DataBind();
        con.Close();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (Session["UserName"] == null && Session["UserPwd"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {


            if (Session["UserName"].ToString() == "Tsoft" && Session["UserPwd"].ToString() == "111")
            {
                string UserId = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
                SqlConnection con = DB.createDB();
                con.Open();

                SqlCommand cmd = new SqlCommand("delete from tb_Users where (UserName NOT IN ('Tsoft')) AND UserId='" + UserId + "' ", con);
                cmd.ExecuteNonQuery();

                this.aa();
                this.GridView1.EditIndex = -1;
            }
            else
            {
                Response.Write("<script>alert('你没有权限删除，必须是管理员才能进行删除操作！');location='javascript:history.go(-1)'</script>");

            }

        }

    }




    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("yonghu/searchUser.aspx");
    }

    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Page.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/yonghu/information");
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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");

        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}