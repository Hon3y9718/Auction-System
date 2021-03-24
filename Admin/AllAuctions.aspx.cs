using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AllAuctions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        GetData();
    }

    protected void GetData(String SearchTxt = null)
    {
        SqlCommand cmd;
        Connection con = new Connection();
        if (SearchTxt == null)
        {
            cmd = new SqlCommand("Select * from auctionDetails", con.con);
        }
        else
        {
            cmd = new SqlCommand("Select * from auctionDetails Where i_auto_id=@SearchElement", con.con);
            cmd.Parameters.AddWithValue("@SearchElement", Int32.Parse(SearchTxt));
        }
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            Label1.Visible = true;
            GridView1.Visible = false;
        }
    }
    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        GetData(SearchBox.Text);
    }
}