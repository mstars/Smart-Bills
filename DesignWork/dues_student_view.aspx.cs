using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class dues_student_view : System.Web.UI.Page
{
    SqlConnection new_con;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();

        int count;
        SqlCommand ncmd = new SqlCommand("select max(bill_id) from billing_tab", new_con);
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

            }


            int val_id = count;
            Label3.Text = val_id.ToString();


            rd.Close();
        }





        SqlCommand cmd = new SqlCommand("select * from student_tab where id='" + Session["u_id"] + "' ", new_con);
        SqlDataReader rrd = cmd.ExecuteReader();
        if (rrd.Read())
        {
            Label1.Text = rrd.GetValue(1).ToString();
            Label5.Text = rrd.GetValue(7).ToString();
            rrd.Close();
        }



        new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        new_con.Open();
        SqlCommand cmdnew = new SqlCommand("select * from billing_tab where name='" + Label1.Text + "'  and bill_id= '" + Label3.Text + "'  ", new_con);
        SqlDataReader dr = cmdnew.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = dr.GetValue(2).ToString();
            Label6.Text = dr.GetValue(3).ToString();
            Label7.Text = dr.GetValue(4).ToString();






            int totamt = Convert.ToInt32(Label6.Text) + Convert.ToInt32(Label7.Text);

            if (Label5.Text.ToString() == "Double")
            {
                int val = totamt / 4350;



                if (val == 1)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 30)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of :  " + (1 * 250);

                    }

                }

                if (val == 3)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 90)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of : " + (2*250);

                    }

                }

                if (val == 6)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 180)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of : " + (3 * 250); 

                    }

                }

            }

            if (Label5.Text.ToString() == "Single")
            {
                int val = totamt / 4950;



                if (val == 1)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 25)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of : " + (1 * 250);

                    }

                }

                if (val == 3)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 85)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of : " + (2 * 250);

                    }

                }

                if (val == 6)
                {

                    DateTime expireDate = DateTime.Parse(Label2.Text);
                    DateTime nowDate = DateTime.Parse(DateTime.Today.ToLongTimeString());

                    TimeSpan ts = expireDate.Date - nowDate.Date;



                    int differenceInDays = Math.Abs(Convert.ToInt32(ts.TotalDays));


                    Label4.Text = val.ToString();

                    if (differenceInDays > 175)
                    {

                        Label4.Visible = true;
                        Label4.Text = "You have a due amount of : " + (3 * 250);

                    }

                }

            }
        }

    }
}