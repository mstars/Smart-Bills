using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class fees_addition : System.Web.UI.Page
{
    SqlConnection new_con;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

        if(!IsPostBack)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            DropDownList1.Text = "Select";

        }
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand updatecmd = new SqlCommand("update fees_structure_tab set  mess_rate='" + TextBox1.Text + "',water_power='" + TextBox2.Text + "',room_rent='" + TextBox3.Text + "' where room_type= '" + DropDownList1.SelectedItem.ToString() + "'", new_con);


        updatecmd.ExecuteNonQuery();
        

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Updated succefully')", true);    
       
        Response.Redirect("fees_addition.aspx");
    

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
            if(DropDownList1.SelectedItem.ToString() =="Select")
            {
             ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Select a valid option')", true);  
            }
            else if (DropDownList1.SelectedItem.ToString() == "Single")
            {
                SqlCommand cmd = new SqlCommand("select * from fees_structure_tab where r_id='1' ", new_con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                TextBox1.Text = rd.GetValue(2).ToString();
                TextBox2.Text = rd.GetValue(3).ToString();
                TextBox3.Text = rd.GetValue(4).ToString();
                TextBox4.Text = rd.GetValue(5).ToString();
            }
            }
            else if (DropDownList1.SelectedItem.ToString() == "Double")
            {
                SqlCommand cmd = new SqlCommand("select * from fees_structure_tab where r_id='2'  ", new_con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                TextBox1.Text = rd.GetValue(2).ToString();
                TextBox2.Text = rd.GetValue(3).ToString();
                TextBox3.Text = rd.GetValue(4).ToString();
                TextBox4.Text = rd.GetValue(5).ToString();
            }
            }

            else if (DropDownList1.SelectedItem.ToString() == "Dormetry")
            {
                SqlCommand cmd = new SqlCommand("select * from fees_structure_tab where r_id='3' ", new_con);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                TextBox1.Text = rd.GetValue(2).ToString();
                TextBox2.Text = rd.GetValue(3).ToString();
                TextBox3.Text = rd.GetValue(4).ToString();
                TextBox4.Text = rd.GetValue(5).ToString();
            }
            }
        }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int dummy=Convert.ToInt32(TextBox1.Text.ToString()) + Convert.ToInt32(TextBox2.Text.ToString()) + Convert.ToInt32(TextBox3.Text.ToString());
        TextBox4.Text = dummy.ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}