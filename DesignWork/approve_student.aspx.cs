using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class approve_student : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {

       int log_id = Convert.ToInt32(Request.QueryString["id"].ToString()); ;
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        SqlCommand cmd = new SqlCommand("select * from student_tab where id= " + log_id + " and test_confirm='pending'", new_con);
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
            Image1.ImageUrl=("~/_img/_profile/" +  rd.GetValue(8).ToString());

        }


       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int log_id = Convert.ToInt32(Request.QueryString["id"].ToString()); ;
         new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        SqlCommand cmd = new SqlCommand("insert into login_tab values('" + log_id + "','pwd','student')", new_con);
        cmd.ExecuteNonQuery();

        SqlCommand updatecmd = new SqlCommand("update student_tab set  test_confirm='confirmed' where id=" + log_id + "", new_con);


        updatecmd.ExecuteNonQuery();
        Response.Redirect("view_request.aspx");


        try
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(email.Text);

            mail.From = new MailAddress("codercapn3mo@gmail.com");
            mail.Subject = "User Id , default password is pwd";
            String Body = log_id.ToString();
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "gmail.com"; //Or Your SMTP Server Address
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential
            ("codercapn3mo@gmail.com", "test@#123");

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
         //   print("Exception in sendEmail:" + ex.Message);
        }




    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int log_id = Convert.ToInt32(Request.QueryString["id"].ToString()); ;
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();


        SqlCommand updatecmd = new SqlCommand("update  student_tab set  test_confirm='rejected' where id=" + log_id + "", new_con);

       
       
        updatecmd.ExecuteNonQuery();

        Response.Redirect("view_request.aspx");
    }
}