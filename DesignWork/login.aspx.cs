using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{

    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("server=.;uid=sa; pwd=macfast@#1;database=hbms_db");
        con.Open();
        log_error.Text = " ";

    }
    protected void login_btn_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from login_tab where u_id= '" + userid.Text + "'  and pass='" + password.Text + "'", con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            String type = rd.GetValue(2).ToString();

            Session["u_id"] = userid.Text;
            if (type.Equals("admin     "))
            {
                Response.Redirect("admin_home.aspx");


            }
            else
            {
                Response.Redirect("student_home.aspx");
            }

        }

        else
        {
            log_error.Text = "Invalid Username/password";
            userid.Text = " ";
            password.Text = " ";
        }
        rd.Close();

    }
}
