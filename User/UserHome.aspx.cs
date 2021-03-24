using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_UserHome : System.Web.UI.Page
{
    Int32 uid;
    Int32 price;
    Int32 AuctionId;
    String currentdatetime = DateTime.Now.Year + "." + DateTime.Now.Month + "." + DateTime.Now.Day + " " + DateTime.Now.Hour + (":") + DateTime.Now.Minute + (":") + DateTime.Now.Second;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login"] != null && Session["uid"] != null)
        {
            Label1.Text = Session["login"].ToString();
            uid = Int32.Parse(Session["uid"].ToString());
        }
        else
        {
            Response.Redirect("../Login.aspx");
        }
        Label2.Visible = false;
        if (!this.IsPostBack)
        {
            AuctionId = Convert.ToInt32(Request.QueryString["AuctionID"]);
            if(AuctionId > 0)
                leftDiv.Attributes.Add("style", "display:block");
        }
    }

    protected void OpenPriceBox(Int32 ID)
    {
        leftDiv.Attributes.Add("style", "display:block");
        AuctionIDLabel.Text = ID.ToString();
    }

    protected void insertData(Int32 ID)
    {
            Connection con = new Connection();
            SqlCommand cmd = new SqlCommand("INSERT INTO BidDetails(i_auction_id, bidCreateDate, bidPrice, i_uid) VALUES(@AuctionID, @bidCreateDate, @bidPrice, @uid)", con.con);
            cmd.Parameters.AddWithValue("@AuctionID", ID);    
            cmd.Parameters.AddWithValue("@bidCreateDate", currentdatetime);
            cmd.Parameters.AddWithValue("@bidPrice", price);
            cmd.Parameters.AddWithValue("uid", uid);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bid Made Successfully. You will receive Call from Admin when you win the Auction. Best of Luck 👍')", true);
            }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "id")
        {
            int row = Convert.ToInt32(e.CommandArgument.ToString());
            String ID = GridView1.Rows[row].Cells[0].Text;
            AuctionId = Convert.ToInt32(ID);
            OpenPriceBox(AuctionId);
            //Response.Redirect(String.Format("UserHome.aspx?AuctionID={0}", ID));
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        price = Int32.Parse(BidPrice.Text);
        Int32 ID = Convert.ToInt32(AuctionIDLabel.Text);
        insertData(ID);
        leftDiv.Attributes.Add("style", "display:none");
    }
    protected void Close_Click(object sender, EventArgs e)
    {
        leftDiv.Attributes.Add("style", "display:none");
    }
}