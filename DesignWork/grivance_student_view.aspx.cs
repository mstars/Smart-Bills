using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class grivance_student_view : System.Web.UI.Page
{
    SqlConnection new_con;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        int count = 0;
        SqlCommand ncmd = new SqlCommand("select max(g_id) from grivance_tab", new_con);
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

            g_id.Text = val_id.ToString();

        }

        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

            SqlCommand cmd = new SqlCommand("select * from student_tab where id='" + Session["u_id"] + "' ", new_con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = dr.GetValue(1).ToString();

        }

        new_con.Close();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        DateTime datetime = Convert.ToDateTime(DateTime.Today);
        SqlCommand cmd = new SqlCommand("insert into grivance_tab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DateTime.Today.Date.ToString() + "','" + Label1.Text + "','pending')", new_con);
        cmd.ExecuteNonQuery();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Complaint Reported')", true);    
       

        Response.Redirect("grivance_student_view.aspx");
    }
}