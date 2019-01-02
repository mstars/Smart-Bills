using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class student_registration : System.Web.UI.Page
{
    SqlConnection new_con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

      
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        int count = 0;
        SqlCommand cmd = new SqlCommand("select max(id) from student_tab", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            if (rd.IsDBNull(0))
            {
                count = 101;
            }
            else
            {
                count = Convert.ToInt32(rd.GetValue(0).ToString());
                count++;
            }


        }
        rd.Close();
        int val_id = count;


        String file_name;

        file_name =profile_upload.FileName;




     
            cmd = new SqlCommand("insert into student_tab values('" + name.Text + "','" + Course_dropbox.SelectedItem.ToString() + "', '" + dob.Text + "','" + address.Text + "'," + phone.Text + ",'" + email.Text + "','" + room_dropbox.SelectedItem.ToString() + "','" + file_name.ToString()+ "','pending')", new_con);
            cmd.ExecuteNonQuery();

            profile_upload.PostedFile.SaveAs(Server.MapPath("~/_img/_profile/" + file_name));

            new_con.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registration Completed succefully')", true);    
       
       

            name.Text = " ";
            dob.Text = " ";
            address.Text = " ";
            Course_dropbox.Text = "Select";
            phone.Text = " ";
            room_dropbox.Text = "Select";
            email.Text = " ";
        
        if (profile_upload.HasFile)
        {

            try
            {
                file_name = profile_upload.FileName;
                SqlCommand cmd_insert = new SqlCommand("insert into student_tab(name,dob,address,phone,email,room_type,profile_upload) values('" + name.Text + "','" + Course_dropbox.SelectedItem.ToString() + "', '" + dob.Text + "','" + address.Text + "'," + phone.Text + ",'" + email.Text + "','" + room_dropbox.SelectedItem.ToString() + "'," + file_name + ")", new_con);
                cmd_insert.ExecuteNonQuery();

                profile_upload.PostedFile.SaveAs(Server.MapPath("~/_img/_profile/" + file_name));


                Session["msg"] = "Registration Completed succefully";

                name.Text = " ";
                dob.Text = " ";
                address.Text = " ";
                Course_dropbox.Text = "Select";
                phone.Text = " ";
                room_dropbox.Text = "Select";
                email.Text = " ";
            }
            catch (Exception ex)
            {
                error_label.Text = "ERROR: " + ex.Message.ToString();

            }
        }

        
        else
        {
            error_label.Text = "please upload your image";
            error_label.ForeColor = System.Drawing.Color.Red;
           
        }
  
     
       
    }
    protected void name_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Course_dropbox_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void dob_TextChanged(object sender, EventArgs e)
    {

    }
}