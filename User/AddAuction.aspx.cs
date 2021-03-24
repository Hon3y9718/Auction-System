using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_AddAuction : System.Web.UI.Page
{
    String userName;
    String currentdatetime =
DateTime.Now.Year + "." + DateTime.Now.Month + "." + DateTime.Now.Day +
               " " + DateTime.Now.Hour + (":") + DateTime.Now.Minute + (":") + DateTime.Now.Second;

    String currentTime = DateTime.Now.Hour + (":") + DateTime.Now.Minute + (":") + DateTime.Now.Second;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] != null)
            userName = Session["Login"].ToString();
        else
            Response.Redirect("../Login.aspx");
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Connection con = new Connection();
        SqlCommand cmd = new SqlCommand("INSERT INTO auctionDetails(AuctionName, price, createdBy, createDate, AuctionStartDate, AuctionEndDate) VALUES(@AuctionName, @price, @createdBy, @createDate, @AuctionStartDate, @AuctionEndDate)", con.con);
        cmd.Parameters.AddWithValue("@AuctionName", auctionName.Text);
        cmd.Parameters.AddWithValue("@price", StartPrice.Text);
        cmd.Parameters.AddWithValue("@createDate", currentdatetime);
        cmd.Parameters.AddWithValue("@createdBy", userName);
        cmd.Parameters.AddWithValue("@AuctionStartDate", StartDate.Text + (" ") + currentTime);
        cmd.Parameters.AddWithValue("@AuctionEndDate", EndDate.Text + (" ") + currentTime);
        int i = cmd.ExecuteNonQuery();
        bool added = false;
        if (i > 0)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Auction Added Successfully. You will receive Call from Admin when someone wins the Auction. Best of Luck 👍')", true);
            added = true;
        }
        if(added)
            Response.Redirect("UserHome.aspx");
    }
}