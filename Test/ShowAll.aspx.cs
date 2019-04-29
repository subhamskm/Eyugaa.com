using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=199.79.62.22; Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserLogin"] == null)
            {
                Response.Redirect("~/Home.aspx");
            }
        }
        disp();
    }
    protected void disp()
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("select doe as Date,name as Name,amount as Amount, description as Description from expenditure", c);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        c.Close();
    }
}