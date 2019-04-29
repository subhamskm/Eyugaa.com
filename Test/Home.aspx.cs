using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection c=new SqlConnection("Data Source=199.79.62.22; Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");
    protected void Page_Load(object sender, EventArgs e)
    {
  
    }
    protected void bitLogin_Click(object sender, EventArgs e)
    {
        
        c.Open();
        SqlCommand cmd = new SqlCommand("select * from users where userid='" + txtUserId.Text + "'", c);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr["passwd"].ToString() == txtPassword.Text)
            {
                Session["UserLogin"] = txtUserId.Text;
                Response.Redirect("~/Default.aspx?userid="+txtUserId.Text+"&username="+dr["firstname"].ToString());
            }
            else
            {
                lblStatus.Text = "Wrong Login Credentials";
            }
        }
        else
        {
            lblStatus.Text = "Wrong login credentials";
        }
        dr.Dispose();
        c.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Signup.aspx");
    }
}