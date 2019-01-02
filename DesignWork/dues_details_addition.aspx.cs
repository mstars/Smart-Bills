using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class dues_details_addition : System.Web.UI.Page
{
    SqlConnection con;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from due_amount_tab where du_id=1 ", con);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                TextBox1.Text = rd.GetValue(2).ToString();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        con.Open();
     
        SqlCommand cmd = new SqlCommand("update due_amount_tab set  due_amount='" + TextBox1.Text + "'  where du_id=1 ", con);


        cmd.ExecuteNonQuery();


        Response.Redirect("dues_details_addition.aspx");
        con.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}