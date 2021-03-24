using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("Select * FROM user_Register where username=@userName and password=@Password", con.con);
        cmd.Parameters.AddWithValue("@userName", userName.Text);
        cmd.Parameters.AddWithValue("@Password", Password.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataRow dr = dt.Rows[0];
            Session["Login"] = userName.Text.Trim();
            Session.Timeout = 3;
            Session["uid"] = Convert.ToString(dr[0]);
            Session.Timeout = 3;
            Response.Redirect("User/UserHome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
        }
        
    }
}