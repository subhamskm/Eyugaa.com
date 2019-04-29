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
        SqlCommand cmd = new SqlCommand("select name as Name,sum(amount) as Total from expenditure where doe>='"+ddlYear.SelectedValue+"-"+(ddlMonth.SelectedIndex+1)+"-1' and doe<'"+ddlYear.SelectedValue+"-"+(ddlMonth.SelectedIndex+2)+"-1' group by userid,name", c);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        cmd = new SqlCommand("select (select sum(amount) from expenditure where doe>='" + ddlYear.SelectedValue + "-" + (ddlMonth.SelectedIndex + 1) + "-1' and doe<'" + ddlYear.SelectedValue + "-" + (ddlMonth.SelectedIndex + 2) + "-1')/(select count(*) from users) as average", c);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            if (dr["average"].ToString() == "")
                lblBill.Text = "0";
            else
                lblBill.Text = dr["average"].ToString();
        }
        dr.Dispose();
        cmd = new SqlCommand("select userid,sum(amount) as sum from expenditure where doe>='"+ddlYear.SelectedValue+"-"+(ddlMonth.SelectedIndex+1)+"-1' and doe<'"+ddlYear.SelectedValue+"-"+(ddlMonth.SelectedIndex+2)+"-1' group by userid", c);
        dr = cmd.ExecuteReader();
        lblPaid.Text = "0";
        while (dr.Read())
        {
            if (dr["userid"].ToString() == Session["UserLogin"].ToString())
            {
                lblPaid.Text = dr["sum"].ToString();
            }
        }
        int amt = Convert.ToInt32(lblBill.Text) - Convert.ToInt32(lblPaid.Text);
        if (amt < 0)
        {
            lblText.Text = "You will be paid";
            lblPay.Text = (-amt).ToString();
        }
        else
        {
            lblText.Text = "You will pay";
            lblPay.Text = amt.ToString();
        }
        dr.Dispose();
        c.Close();
    }
}