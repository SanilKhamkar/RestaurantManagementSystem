using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Restaurant
{
    public partial class feedback : System.Web.UI.Page
    {
        SqlCommand chk = new SqlCommand();
        SqlCommand ins = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            String user = (String)Session["uname"];
            String admin = (String)Session["adname"];
            String emp = (String)Session["empname"];

            if (String.IsNullOrEmpty(user) == false || String.IsNullOrEmpty(admin) == false || String.IsNullOrEmpty(emp) == false)
            {
                Button2.Visible = true;
            }

            con.ConnectionString = "Data Source=SANIL\\MSSQLSERVER01;Initial Catalog=restaurant;Integrated Security=True;MultipleActiveResultSets=true";
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            dt = new DataTable();
            
            //Inserting into Database SignUp details.    

            ins.CommandText = "Insert into feedback (Name,Email,Taste,Service,Comment) values(@Name,@Email,@Taste,@Service,@Comment)";
            ins.Connection = con;
            ins.Parameters.AddWithValue("Name", TextBox1.Text);
            ins.Parameters.AddWithValue("Email", TextBox2.Text);
            ins.Parameters.AddWithValue("Taste", DropDownList1.SelectedItem.Value);
            ins.Parameters.AddWithValue("Service", DropDownList2.SelectedItem.Value);
            ins.Parameters.AddWithValue("Comment", TextBox3.Text);
            ins.ExecuteNonQuery();

            Response.Redirect("feedbacksuccess.aspx");

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}