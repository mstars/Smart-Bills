using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class change_admin_password : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from login_tab where u_id= '" + Session["u_id"] + "'  and pass='" + c_pass.Text + "'", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            rd.Close();
            SqlCommand cmdUpdate = new SqlCommand("update login_tab set pass='" +TextBox1.Text +"' where u_id='" + Session["u_id"] + "'",new_con);

                cmdUpdate.ExecuteNonQuery();

            n_pass.Text = " ";
            TextBox1.Text=" ";
                Session["msg"] = "Updated succefully";
                Response.Redirect("admin_home.aspx"); 



        }
        else
        {
            Label1.Text = "Invalid current password";
            c_pass.Text = " ";
            n_pass.Text = " ";
            TextBox1.Text=" ";
        }
        rd.Close();

    }
    }
