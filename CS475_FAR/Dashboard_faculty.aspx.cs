using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data;
using static System.Exception;

namespace CS475_FAR
{
    public partial class Dashboard_faculty : System.Web.UI.Page
    {
        protected void ValidateUser(object sender, EventArgs e)
        {
            int userId = 0;
            string roles = string.Empty;




            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where userName =@userName and Password=@Password", con);

            cmd.Connection = con;
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            userId = Convert.ToInt32(reader["userType"]);
            roles = reader["userRole"].ToString();
            con.Close();





        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] != null)
            {

                Label1.Text = Session["user"].ToString();

            }

            if (Session["samjam"] != null)
            {
                GridView1.Visible = false;

                if (Session["tomjef"] != null)
                {
                    GridView1.Visible = true;
                }



            }









            //protected void linkContact_Click(object sender, EventArgs e)
            //{
            //    Response.Redirect("About.aspx");
            //}





        }

        protected void linkCreateReport_Click(object sender, EventArgs e)
        {

            Response.Redirect("Create_Report.aspx");

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void linkContact_Click(object sender, EventArgs e)
        {

        }

       
        protected void linkReport_Click(object sender, EventArgs e)
        {

                Response.Redirect("Reports.aspx");
            
        }

        protected void logoffBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("loginPage.aspx");
        }
    }
    
}