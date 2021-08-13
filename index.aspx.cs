using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into contactus(name,email,subject,message)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmessage.Text + "')", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Your Query Send to Admin Successfully..!!');window.location.href ='index.aspx';</script>");
    }
}