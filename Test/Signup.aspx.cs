using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=199.79.62.22; Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSignup_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            SqlCommand cmd=new SqlCommand("insert into users values('"+txtUserId.Text+"','"+txtFirst.Text+"','"+txtLast.Text+"','"+txtMobile.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"')",c);
            cmd.ExecuteNonQuery();
            lblStatus.Text = "Signed up successfully..";
            c.Close();
        }
        catch(Exception e1)
        {
            lblStatus.Text=e1.Message;
        }
    }
}