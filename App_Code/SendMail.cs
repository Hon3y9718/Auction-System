using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for SendMail
/// </summary>
public class SendMail
{
	public SendMail()
	{
		//Do Nothing in Constructor
	}

	public Boolean SendEmail(String Msg)
	{
		
			MailMessage message = new MailMessage();
			message.From = new MailAddress("uk481281@gmail.com");
			message.To.Add(new MailAddress("umeshkumar.80244@gmail.com"));
			message.Subject = "Test";
			message.IsBodyHtml = false; //to make message body as html  
			message.Subject = "Message from Auction System Client";
			message.Body = Msg;
			SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
			client.EnableSsl = true;
			client.DeliveryMethod = SmtpDeliveryMethod.Network;
			client.UseDefaultCredentials = false;
			client.Credentials = new System.Net.NetworkCredential("uk481281@gmail.com", "Hon3y.me2000");
			client.Send(message);    
			return true;
	}
}