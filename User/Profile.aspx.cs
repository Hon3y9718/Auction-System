using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataList1.Visible = true;
        lblMsg.Visible = false;
        if (Session["login"] != null)
        {
            String username = Session["login"].ToString();
            Connection con = new Connection();
            SqlCommand cmd = new SqlCommand("Select * FROM user_Register where username=@userName", con.con);
            cmd.Parameters.AddWithValue("@userName", username);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
            if (DataList1.Items.Count == 0)
            {
                DataList1.Visible = false;
                lblMsg.Visible = true;
                lblMsg.Text = "Sorry you are not selected....!!";
            }
        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
    }
}