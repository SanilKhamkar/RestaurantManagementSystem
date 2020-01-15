using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Xml.Linq;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;

namespace Restaurant
{
    public partial class Reservation_Control : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String user = (String)Session["uname"];
            String admin = (String)Session["adname"];
            String emp = (String)Session["empname"];

            if (String.IsNullOrEmpty(user) == false || String.IsNullOrEmpty(admin) == false || String.IsNullOrEmpty(emp) == false)
            {
                Button2.Visible = true;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}