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
            SqlCommand cmd = new SqlCommand("insert into users values('" + txtUserID.Text + "','" + txtFirstname.Text + "','" + txtLastname.Text + "','" + txtMobile.Text + "','" + txtEmailID.Text + "','" + txtPasswd.Text + "')", c);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Signup successful')</script>");
            c.Close();
        }
        catch (Exception e1)
        {
            Response.Write("<script>alert('Signup unsuccessful')</script>");
            Response.Redirect("~/Signup-css.aspx");
        }
    }
}