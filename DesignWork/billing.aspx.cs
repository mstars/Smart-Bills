﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class billing : System.Web.UI.Page
{
    SqlConnection new_con;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        int count = 0;
        SqlCommand cmd = new SqlCommand("select max(bill_id) from billing_tab", new_con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            if (rd.IsDBNull(0))
            {
                count = 201;
            }
            else
            {
                count = Convert.ToInt32(rd.GetValue(0).ToString());
                count++;
            }


            int val_id = count;

            bill_no.Text = val_id.ToString();
        }

        rd.Close();
        if (!IsPostBack)
        {
            Button1.Visible = false;
            Button3.Visible = false;


            DropDownList2.Visible = false;
            Label5.Visible = false;
            Label4.Visible = false;
            DropDownList1.Visible = false;

            name.Visible = false;
            Label1.Visible = false;

            Label3.Visible = false;
            Label2.Visible = false;
            TextBox2.Visible = false;
            Button2.Visible = false;
            total_amount.Visible = false;
            fNf.Visible = false;
            qwerty.Visible = false;
            rupee.Visible = false;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("billing.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {


        SqlCommand cmd_insert = new SqlCommand("insert into billing_tab values('" + name.Text + "', '" + DateTime.Now.ToLongDateString() + "','" + TextBox2.Text + "'," + total_amount.Text + ")", new_con);
        cmd_insert.ExecuteNonQuery();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bill accepted')", true);    
       


        Response.Redirect("billing.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       if(DropDownList1.SelectedItem.ToString()=="Yes")
       {
           Label2.Visible=true;
           TextBox2.Visible=true;
           Button3.Visible = true;
       }
        else
       {
           Label2.Visible=false;
           TextBox2.Visible=false;
           Button3.Visible = false;

       }
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList2.SelectedItem.ToString() == "1 month" && Label6.Text=="Double")
        {
            total_amount.Text = "4350";
            qwerty.Visible = true;
            rupee.Visible = true;
        }
        else if (DropDownList2.SelectedItem.ToString() == "3 months" && Label6.Text == "Double")
        {
            total_amount.Text = "13050";
            qwerty.Visible = true;
            rupee.Visible = true;

        }
        else if (DropDownList2.SelectedItem.ToString() == "6 months" && Label6.Text == "Double")
        {
            total_amount.Text = "26100";
            qwerty.Visible = true;
            rupee.Visible = true;
        }

        else if (DropDownList2.SelectedItem.ToString() == "1 month" && Label6.Text == "Single")
        {
            total_amount.Text = "4950";
            qwerty.Visible = true;
            rupee.Visible = true;
        }
        else if (DropDownList2.SelectedItem.ToString() == "3 months" && Label6.Text == "Single")
        {
            total_amount.Text = "14850";
            qwerty.Visible = true;
            rupee.Visible = true;
        }
        else if (DropDownList2.SelectedItem.ToString() == "6 months" && Label6.Text == "Single")
        {
            total_amount.Text = "29700";
            qwerty.Visible = true;
            rupee.Visible = true;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        con = new SqlConnection("server=.;uid=sa; pwd=macfast@#1;database=hbms_db");
        con.Open();


        SqlCommand cmd = new SqlCommand("select * from student_tab where name like '%" + TextBox1.Text + "%' or id like '%" + TextBox1.Text + "%' ", con);
        SqlDataReader rd = cmd.ExecuteReader();




        if (rd.Read())
        {
            Button1.Visible = true;
            DropDownList2.Visible = true;
            Label5.Visible = true;
            name.Visible = true;
            Label1.Visible = true;

            Label3.Visible = true;
            Label4.Visible = true;
            DropDownList1.Visible = true;
            Button2.Visible = true;
            total_amount.Visible = true;
            fNf.Visible = false;



            name.Text = rd.GetValue(1).ToString();

            Label6.Text = rd.GetValue(7).ToString();


            rd.Close();
        }

        else
        {

            Button1.Visible =false;
            DropDownList2.Visible = false;
            Label5.Visible = false;
            name.Visible = false;
            Label1.Visible = false;

            Label3.Visible = false;
            Label4.Visible = false;
            DropDownList1.Visible = false;
            Button2.Visible = false;
            total_amount.Visible = false;
            Button2.Visible = false;
            fNf.Visible = true;
            fNf.Text = "No Record with " + TextBox1.Text;



        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int tot = Convert.ToInt32(total_amount.Text.ToString());
        int ded = Convert.ToInt32(TextBox2.Text.ToString());

        int total = tot - ded;
        total_amount.Text = total.ToString();

    }
}