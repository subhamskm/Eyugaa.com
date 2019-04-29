using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=199.79.62.22; Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");    
    protected void Page_Load(object sender, EventArgs e)
    {
     
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("select * from users where userid='" + txtUserId.Text + "' and passwd='" + txtPassword.Text + "'", c);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr["passwd"].ToString() == txtPassword.Text)
            {
                Session["UserLogin"] = txtUserId.Text;
                Response.Redirect("~/Default.aspx?userid=" + txtUserId.Text + "&username=" + dr["firstname"].ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Wrong login credentials')</script>");
        }
        dr.Dispose();
        c.Close();
    }
}