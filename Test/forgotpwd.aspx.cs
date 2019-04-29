using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class forgotpwd : System.Web.UI.Page
{
    SqlConnection c = new SqlConnection("Data Source=199.79.62.22;Initial Catalog=EyugaaDB; User Id=EyugaaSA; Password=Abc123#*");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("select * from Users where userid='" + txtID.Text + "' or emailid='" + txtID.Text + "'",c);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            MailMessage mm = new MailMessage();
            mm.Subject = "Forgot password";
            mm.To.Add(new MailAddress(dr["emailid"].ToString(), dr["firstname"].ToString()));
            mm.To.Add(new MailAddress("info@eyugaa.com", "Eyugaa Co."));
            mm.From = new MailAddress("info@eyugaa.com", txtID.Text);
            string body = "<table" +
                "<tr><td><b>User ID:</b></td><td>" + dr["userid"].ToString() + "</td></tr>" +
                "<tr><td><b>Password:</b></td><td>" + dr["passwd"].ToString() + "</td></tr>" +
                "</table>";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient sc = new SmtpClient();
            sc.UseDefaultCredentials = false;
            sc.EnableSsl = false;
            sc.Port = 587;
            sc.DeliveryMethod = SmtpDeliveryMethod.Network;
            sc.Host = "webmail.eyugaa.com";
            sc.Credentials = new System.Net.NetworkCredential("info@eyugaa.com", "Pass123$*");
            sc.Send(mm);
            Response.Write("<script>alert('Email sent.')</script>");
        }
        else
        {
            Response.Write("<script>alert('ID not available.')</script>");
            txtID.Text = "";
        }
        dr.Dispose();
        c.Close();
    }
}