using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMsg(object sender, EventArgs e)
    {
        SendMail mail = new SendMail();
        String msg = "From: " + UserEmail.Text + " \n\nMessage: " + Message.Text;
        Boolean value = mail.SendEmail(msg);
        if (value)
        {
            Response.Redirect("Home.aspx");
        }
    }
}