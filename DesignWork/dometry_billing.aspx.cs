using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class dometry_billing : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            name.Text = " ";
            dob.Text = " ";
            address.Text = " ";
            phone.Text = "";
        }
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        int count = 0;
        SqlCommand cmd = new SqlCommand("select max(did) from dometry_billing_tab", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            if (rd.IsDBNull(0))
            {
                count = 301;
            }
            else
            {
                count = Convert.ToInt32(rd.GetValue(0).ToString());
                count++;
            }


        }
        bill_id.Text = count.ToString();
        rd.Close();
    }
    protected void dob_TextChanged(object sender, EventArgs e)
    {

        int nod = Convert.ToInt32(dob.Text.ToString());

        int val= 250*nod;
        total_amount.Text = val.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd_insert = new SqlCommand("insert into dometry_billing_tab values('" + name.Text + "','" + address.Text + "'," + phone.Text + ", '" + dob.Text + "', '" + total_amount.Text + "' )", new_con);
        cmd_insert.ExecuteNonQuery();



        Response.Redirect("dometry_billing.aspx");

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bill accepted')", true);

    }
}