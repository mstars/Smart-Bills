using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class dues_details_hview : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {
        int d_id = Convert.ToInt32(Request.QueryString["due_id"].ToString()); ;

        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        SqlCommand cmd = new SqlCommand("select * from due_billing_tab where due_id= " + d_id + " ", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            bill_no.Text = rd.GetValue(0).ToString();
            name.Text = rd.GetValue(1).ToString();
            date_pay.Text = rd.GetValue(2).ToString();
           
            total_amount.Text = rd.GetValue(3).ToString();
        }

    }
}