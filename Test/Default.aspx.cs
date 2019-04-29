using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=199.79.62.22; Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["UserLogin"]==null)
            {
                Response.Redirect("~/Home.aspx");
            }
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            c.Open();
            string userid = Session["UserLogin"].ToString();
            SqlCommand cmd=new SqlCommand("select firstname from users where userid='"+userid+"'",c);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string name = dr["firstname"].ToString();
            dr.Dispose();
            cmd = new SqlCommand("insert into expenditure values('" + userid + "','" + name + "'," + txtAmt.Text + ",'" + txtDate.Text + "','" + txtDescription.Text + "')", c);
            cmd.ExecuteNonQuery();
            lblStatus.Text = "Record submitted successfully..";
            c.Close();
        }
        catch (Exception e1)
        {
            lblStatus.Text = e1.Message;
        }
    }
}