using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AllBids : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminLogin"] == null)
            Response.Redirect("../AdminMain.aspx");
        else
            GetData();
        Label1.Visible = false;
    }

    protected void GetData(String SearchTxt=null)
    {
        SqlCommand cmd;
        Connection con = new Connection();
        if (SearchTxt == null)
        {
            cmd = new SqlCommand("Select * from BidDetails", con.con);
            cmd.Parameters.AddWithValue("@saleStatus", "true");
        }
        else
        {
            cmd = new SqlCommand("Select * from BidDetails Where i_auction_id=@SearchElement", con.con);
            cmd.Parameters.AddWithValue("@SearchElement", Int32.Parse(SearchTxt));
            cmd.Parameters.AddWithValue("@saleStatus", "true");
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

    protected void makeSale(String BidID, String AuctionID, String BidPrice, String UserID)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("INSERT INTO ClosingHistory(i_bid_id, i_auction_id, bidPrice, i_uid) VALUES(@bidID, @AuctionID, @bidPrice, @userID)", con.con);
        cmd.Parameters.AddWithValue("@bidID", BidID);
        cmd.Parameters.AddWithValue("@AuctionID", AuctionID);
        cmd.Parameters.AddWithValue("@bidPrice", BidPrice);
        cmd.Parameters.AddWithValue("@userID", UserID);
        int i = cmd.ExecuteNonQuery();
        cmd = new SqlCommand("UPDATE BidDetails SET sold=@saleStatus, winner=@UserID WHERE i_auction_id=@AuctionID", con.con);
        cmd.Parameters.AddWithValue("@saleStatus", "true");
        cmd.Parameters.AddWithValue("@AuctionID", AuctionID);
        cmd.Parameters.AddWithValue("@userID", UserID);
        int j = cmd.ExecuteNonQuery();
        if (i > 0 && j > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Sold Successfully')</script>");
        }
    }

    protected void callMobile(String userID)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("Select Mobile From user_Register Where i_auto_id=@ID", con.con);
        cmd.Parameters.AddWithValue("@ID", userID);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            foreach (DataRow row in dt.Rows)
            {
                String MobileNumber = row["Mobile"].ToString();
                Response.Redirect(String.Format("tel:{0}", MobileNumber));
            }   
        }
    }

    protected void SearchBtn_Click(object sender, EventArgs e)
    {
        GetData(SearchBox.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("sale"))
        {
            Int32 index = Int32.Parse(e.CommandArgument.ToString());
            String BidID = GridView1.Rows[index].Cells[0].Text;
            String AID = GridView1.Rows[index].Cells[1].Text;
            String BidPrice = GridView1.Rows[index].Cells[3].Text;
            String UserID = GridView1.Rows[index].Cells[4].Text;
            //Response.Redirect(String.Format("AllBids.aspx?AuctionID={0}", AuctionID));
            makeSale(BidID, AID, BidPrice, UserID);
        }
        else if (e.CommandName.Equals("call"))
        {
            Int32 index = Int32.Parse(e.CommandArgument.ToString());
            String BidID = GridView1.Rows[index].Cells[4].Text;
            callMobile(BidID);
        }
    }
}