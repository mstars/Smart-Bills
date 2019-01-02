using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class student_details_hview : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {
        int log_id = Convert.ToInt32(Request.QueryString["id"].ToString()); ;
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        SqlCommand cmd = new SqlCommand("select * from student_tab where id= " + log_id + " and test_confirm='confirmed'", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            name.Text = rd.GetValue(1).ToString();
            course.Text = rd.GetValue(2).ToString();
            dob.Text = rd.GetValue(3).ToString();
            address.Text = rd.GetValue(4).ToString();
            phone.Text = rd.GetValue(5).ToString();
            email.Text = rd.GetValue(6).ToString();
            room_type.Text = rd.GetValue(7).ToString();
            Image1.ImageUrl = ("~/_img/_profile/" + rd.GetValue(8).ToString());

        }


    }
}