using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;

namespace CS475_FAR
{
    public partial class Create_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtDeptName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTeaching_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtReflect_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtService_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtServiceReflect_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtScholarly_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtScholarlyReflect_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtNarrative_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtDeptName.Text = "";
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtNarrative.Text = "";
            txtReflect.Text = "";
            txtScholarly.Text = "";
            txtScholarlyReflect.Text = "";
            txtService.Text = "";
            txtServiceReflect.Text = "";
            txtTeaching.Text = "";

        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(System.Configuration.
ConfigurationManager.ConnectionStrings["far_testingConnectionString3"].ToString());
            try
            {
                string query = "insert into Reports(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text+ "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                con.Open();
                da.SelectCommand.ExecuteNonQuery();
                con.Close();

            }
            catch
            {
                con.Close();
            }
            //string conString = ConfigurationManager.ConnectionStrings["far_testingConnectionString2"].ConnectionString;
            //SqlConnection sqlconn = new SqlConnection(conString);
            //sqlconn.Open();

            //try
            //{
            //    string sqlStmt = "insert into Reports (firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative)  Values (@firstName, @lastName, @departmentName, @teachingA, @teachingB, @serviceA, @serviceB, @scholarlyA, @scholarlyB, narrative)";
            //    SqlConnection cn = null;
            //    SqlCommand cmd = null;
            //    cn = new SqlConnection(conString);
            //    cmd = new SqlCommand(sqlStmt, cn);
            //    cmd.Parameters.Add(new SqlParameter("@firstName", SqlDbType.VarChar, 50));
            //    cmd.Parameters.Add(new SqlParameter("@lastName", SqlDbType.VarChar, 50));
            //    cmd.Parameters.Add(new SqlParameter("@departmentName", SqlDbType.VarChar, 100));

            //    cmd.Parameters.Add(new SqlParameter("@teachingA", SqlDbType.VarChar, 1000));
            //    cmd.Parameters.Add(new SqlParameter("@teachingB", SqlDbType.VarChar, 1000));
            //    cmd.Parameters.Add(new SqlParameter("@serviceA", SqlDbType.VarChar, 1000));
            //    cmd.Parameters.Add(new SqlParameter("@serviceB", SqlDbType.VarChar, 1000));
            //    cmd.Parameters.Add(new SqlParameter("@scholarlyA", SqlDbType.VarChar, 1000));
            //    cmd.Parameters.Add(new SqlParameter("@scholarlyB", SqlDbType.VarChar, 1000));

            //    cmd.Parameters.Add(new SqlParameter("@narrative", SqlDbType.VarChar, 1000));



            //    cmd.Parameters["@firstName"].Value = txtFirstName.Text;

            //    cmd.Parameters["@lastName"].Value = txtLastName.Text;
            //    cmd.Parameters["@departmentName"].Value = txtDeptName.Text;


            //    cmd.Parameters["@teachingA"].Value = txtTeaching.Text;

            //    cmd.Parameters["@teachingB"].Value = txtReflect.Text;
            //    cmd.Parameters["@serviceA"].Value = txtService.Text;

            //    cmd.Parameters["@serviceB"].Value = txtServiceReflect.Text;

            //    cmd.Parameters["@scholarlyA"].Value = txtScholarly.Text;
            //    cmd.Parameters["@scholarlyB"].Value = txtScholarlyReflect.Text;

            //    cmd.Parameters["@narrative"].Value = txtNarrative.Text;









            //    cn.Open();
            //    cmd.ExecuteNonQuery();
            //}
            //catch
            //{

            //}
            ////sqlconn.Open();



        } 
    }
    }
    
