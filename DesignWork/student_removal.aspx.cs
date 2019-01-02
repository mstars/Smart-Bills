using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class student_removal : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        TextBox1.Text = "";
        }
        
        name.Visible = false;
        course.Visible = false;
        dob.Visible = false;
        address.Visible = false;
        phone.Visible = false;
        email.Visible = false;
        room_type.Visible = false;
        Image1.Visible = false;

        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;

        Button2.Visible = false;
        Button3.Visible = false;

       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        con = new SqlConnection("server=.;uid=sa; pwd=macfast@#1;database=hbms_db");
        con.Open();

        SqlCommand cmd = new SqlCommand("select * from student_tab where name like '%" + TextBox1.Text + "%' or id like '%" + TextBox1.Text + "%' ", con);
        SqlDataReader rd = cmd.ExecuteReader();

        if (rd.Read())
        {


            name.Visible = true;
            course.Visible = true;
            dob.Visible = true;
            address.Visible = true;
            phone.Visible = true;
            email.Visible = true;
            room_type.Visible = true;
            Image1.Visible = true;


            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
            Label7.Visible = true;
            Button2.Visible = true;
            fNf.Visible = false;

            Button3.Visible = true;


            Label8.Text = rd.GetValue(0).ToString();

            name.Text = rd.GetValue(1).ToString();
            course.Text = rd.GetValue(2).ToString();
            dob.Text = rd.GetValue(3).ToString();
            address.Text = rd.GetValue(4).ToString();
            phone.Text = rd.GetValue(5).ToString();
            email.Text = rd.GetValue(6).ToString();
            room_type.Text = rd.GetValue(7).ToString();
            Image1.ImageUrl = ("~/_img/_profile/" + rd.GetValue(8).ToString());

            rd.Close();
        }

        else
        {

            Button2.Visible = false;
            fNf.Visible = true;
            fNf.Text = "No Record with " + TextBox1.Text;



        }

         


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


 
          con = new SqlConnection("server=.;uid=sa; pwd=macfast@#1;database=hbms_db");
        con.Open();
      

            

            SqlCommand cmddelete = new SqlCommand("delete from student_tab where id ='"+ Label8.Text + "'", con);
            cmddelete.ExecuteNonQuery();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Deleted succefully')", true);    
       
       

            name.Visible = false;
            course.Visible = false;
            dob.Visible = false;
            address.Visible = false;
            phone.Visible = false;
            email.Visible = false;
            room_type.Visible = false;
            Image1.Visible = false;

            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;

            Button2.Visible = false;

        
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("student_removal.aspx");
    }
}
