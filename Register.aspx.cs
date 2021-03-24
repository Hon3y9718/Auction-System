using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Connection conn = new Connection();
        String query = "insert into user_Register values(@username, @password, @name, @address, @AcNo, @BankName, @Email_Id, @Mobile, @u_type)";
        SqlCommand cmd = new SqlCommand(query, conn.con);
        cmd.Parameters.AddWithValue("@Name", Name.Text);
        cmd.Parameters.AddWithValue("@address", Address.Text);
        cmd.Parameters.AddWithValue("@u_type", u_type.SelectedValue);
        cmd.Parameters.AddWithValue("@Email_Id", Email.Text);
        cmd.Parameters.AddWithValue("@AcNo", AcNumber.Text);
        cmd.Parameters.AddWithValue("@BankName", Bank.Text);
        cmd.Parameters.AddWithValue("@username", userName.Text);
        cmd.Parameters.AddWithValue("@Password", Password.Text);
        cmd.Parameters.AddWithValue("@mobile", Mobile.Text);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("Login.aspx");
        }
    }
}