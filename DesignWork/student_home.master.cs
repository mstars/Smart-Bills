using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class student_home : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["u_id"] == null)
        {
            Response.Redirect("index.aspx");
        }
        
    }

 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["u_id"] = null;
        Session.Clear();
        Session.Abandon();

        Response.Redirect("index.aspx");
    }
}
