using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ShowOne : System.Web.UI.Page
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
        ddl.SelectedValue = Session["UserLogin"].ToString();
        int n = Convert.ToInt32(ddlMonth.SelectedValue)+ 1;
        SqlCommand cmd = new SqlCommand("select ExpenditureID as ExpenditureID, doe as Date, amount as Amount, description as Description from expenditure where name='" + ddl.SelectedValue + "' and doe>='" + ddlYear.SelectedValue + "-" + ddlMonth.SelectedValue + "-1' and doe<'" + ddlYear.SelectedValue + "-" + n + "-1'", c);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        c.Close();
    }
}