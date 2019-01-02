using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class bill_details : System.Web.UI.Page
{
    SqlConnection new_con;

    SqlDataAdapter adapt;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Response.Redirect("bill_details_hview.aspx?bill_id=" + Convert.ToInt32(e.CommandArgument.ToString()) + "");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //    new_con = new SqlConnection("server=.; uid=sa;pwd=macfast@#1; database=hbms_db");
        //    new_con.Open();

        //    dt = new DataTable();


        //    adapt = new SqlDataAdapter("select * from student_tab where course='" + DropDownList1.SelectedItem.ToString() + "' ", new_con);
        //    adapt.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //    }
        //    new_con.Close();  
        
    }
}