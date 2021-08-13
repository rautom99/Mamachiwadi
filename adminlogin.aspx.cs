using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from admin where username = '" + txtusername.Text + "' and password = '" + txtpassword.Text + "'", con);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = dt.Rows[0]["username"].ToString();
            Response.Redirect("admin/welcome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Login Failed ! Username and Password Wrong');window.location.href ='adminlogin.aspx';</script>");
        }
    }
}