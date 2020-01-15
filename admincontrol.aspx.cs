using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant
{
    public partial class admincontrol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = (String)Session["uname"];
            String admin = (String)Session["adname"];
            String emp = (String)Session["empname"];

            if (String.IsNullOrEmpty(user) == false || String.IsNullOrEmpty(admin) == false || String.IsNullOrEmpty(emp) == false)
            {
                Button1.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}