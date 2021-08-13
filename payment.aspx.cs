using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public int findid()
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select ISNULL(max(id),0) as id from booking", con);
        da.Fill(dt);
        int p = 1;
        if (dt.Rows.Count > 0)
        {
            p = int.Parse(dt.Rows[0]["id"].ToString());
        }

        return p;
    }
    public void bookingdata(int id)
    {
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter("select * from booking where id = " + id, con);
        da.Fill(dt);
      
        if (dt.Rows.Count > 0)
        {
            lblname.Text = dt.Rows[0]["name"].ToString();
            lblmobile.Text = dt.Rows[0]["mobile"].ToString();
            lblemail.Text = dt.Rows[0]["email"].ToString();
            lbltpersons.Text = dt.Rows[0]["tpersons"].ToString();
            lblcheckindate.Text = dt.Rows[0]["checkindate"].ToString();
            lblcheckoutdate.Text = dt.Rows[0]["checkoutdate"].ToString();
            lbltotalrate.Text = dt.Rows[0]["totalrate"].ToString();

        }
    }
    protected void btnpayment_Click(object sender, EventArgs e)
    {
        int bookingid = findid();
        bookingdata(bookingid);
        SqlCommand cmd = new SqlCommand("insert into paymentgateway(bookingid,paymenttype,cardno,expdate,cvv)values(" + bookingid + ",'" + ddlpaymenttype.SelectedValue + "'," + txtcard.Text + ",'" + txtexp.Text + "'," + txtcvv.Text + ")", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        common cs = new common();
        string body = PopulateBody();
        cs.sendMail(lblemail.Text, "Mamachiwadi Booking Invoice", body);
        Response.Write("<script>alert('Payment Successfully Done..!! Your Invoice send to your Mail..');window.location.href ='index.aspx';</script>");
    }

    public string PopulateBody()
    {
        string body = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/invoiceemail.html")))
        {
            body = reader.ReadToEnd();
        }
        body = body.Replace("{name}", lblname.Text);
        body = body.Replace("{email}", lblemail.Text);
        body = body.Replace("{mobile}", lblmobile.Text);
        body = body.Replace("{tpersons}", lbltpersons.Text);
        body = body.Replace("{checkindate}", lblcheckindate.Text);
        body = body.Replace("{checkoutdate}", lblcheckoutdate.Text);
        body = body.Replace("{totalrate}", lbltotalrate.Text);
        body = body.Replace("{paymenttype}", ddlpaymenttype.SelectedValue);
        body = body.Replace("{cardno}", txtcard.Text);
        return body;
    }
}