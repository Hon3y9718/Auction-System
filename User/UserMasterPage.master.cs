using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
    protected void LogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("../Login.aspx");
    }
    protected void AddAuction_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddAuction.aspx");
    }
    protected void cart_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserHome.aspx");
    }
}
