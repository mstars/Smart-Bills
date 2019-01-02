using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dometry_billing_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            Response.Redirect("dometry_billing_details_hview.aspx?did=" + Convert.ToInt32(e.CommandArgument.ToString()) + "");
        }
    }
}