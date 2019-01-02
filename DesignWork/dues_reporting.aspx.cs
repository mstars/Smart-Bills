using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class dues_reporting : System.Web.UI.Page
{
    SqlConnection new_con;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            TextBox1.Text = " ";
            TextBox2.Text = " ";
            RequiredFieldValidator1.Visible = false;
            RequiredFieldValidator2.Visible = false;
   
        con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        con.Open();
        int count = 0;
        SqlCommand ncmd = new SqlCommand("select max(d_id) from due_reporting_tab", con);
        SqlDataReader rd = ncmd.ExecuteReader();
        if (rd.Read())
        {
            if (rd.IsDBNull(0))
            {
                count = 1;
            }
            else
            {
                count = Convert.ToInt32(rd.GetValue(0).ToString());
                count++;
            }


            int val_id = count;

            d_id.Text = val_id.ToString();

        }

        con.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        con.Open();
        DateTime datetime = Convert.ToDateTime(DateTime.Today);
        SqlCommand cmd = new SqlCommand("insert into due_reporting_tab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Today.ToLongTimeString() + "')", con);
        cmd.ExecuteNonQuery();

        Response.Redirect("dues_reporting.aspx");
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Message Passed')", true);


    }
}