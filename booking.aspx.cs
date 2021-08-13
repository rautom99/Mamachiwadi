using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncheckavailability_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select checkindate,ISNULL(sum(tpersons),0) as tpersons from booking where checkindate='" + txtcheckin.Text + "' group by checkindate", con);
        da.Fill(dt);
        string p = "";
        if (dt.Rows.Count > 0)
        {
            p = dt.Rows[0]["tpersons"].ToString();
        }
        else
        {
            p = "0";
        }
        Int32 bookcount = Int32.Parse(p) + Int32.Parse(txtpersons.Text);
        if (bookcount >= 32)
        {
            lblstatus.Text = "booking Not Available for " + txtcheckin.Text + " this date Please choose another date";
            lblstatus.ForeColor = System.Drawing.Color.Red;
            btnbooking.Enabled = false;
        }
        else
        {
            lblstatus.Text = "Booking Available. Please click on Book Button for Payment.";
            lblstatus.ForeColor = System.Drawing.Color.Green;
            DateTime dtout = Convert.ToDateTime(txtcheckin.Text);
            string dtoutstring = dtout.AddDays(1).AddMinutes(30).AddHours(6).ToString("dd/MM/yyyy hh:mm:ss");
            txtcheckout.Text = dtoutstring;
            long total = long.Parse(txtpersons.Text) * 2500;
            txttotal.Text = total.ToString();
            btnbooking.Enabled = true;
        }

    }
    protected void btnbooking_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand("insert into booking(name,email,mobile,tpersons,checkindate,checkoutdate,totalrate)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtMobileNo.Text + "','" + txtpersons.Text + "','" + txtcheckin.Text + "','" + txtcheckout.Text + "'," + txttotal.Text + ")", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        common cs = new common();
        cs.sendMail(txtemail.Text, "Welcome to Mamachiwadi", "Welcome to Mamachiwadi Proceed With your Payment");
        Response.Write("<script>alert('Booking Add Successfully..!! Redirect to Payment Gateway..');window.location.href ='payment.aspx';</script>");
    }
}