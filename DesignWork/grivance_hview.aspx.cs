using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class grivance_hview : System.Web.UI.Page
{
        SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {

        int g_id = Convert.ToInt32(Request.QueryString["g_id"].ToString()); ;

         new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        SqlCommand cmd = new SqlCommand("select * from grivance_tab where g_id= " + g_id + " ", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            bill_no.Text = rd.GetValue(0).ToString();
            name.Text = rd.GetValue(4).ToString();
            date_pay.Text = rd.GetValue(3).ToString();
            complaint.Text = rd.GetValue(2).ToString();

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int g_id = Convert.ToInt32(Request.QueryString["g_id"].ToString()); ;
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        SqlCommand updatecmd = new SqlCommand("update grivance_tab set  verification='verified' where g_id=" + g_id + "", new_con);


        updatecmd.ExecuteNonQuery();
        Response.Redirect("grivance.aspx");

    }
}
