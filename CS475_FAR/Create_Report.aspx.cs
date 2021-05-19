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
            txtFacultyID.Text = "";
            txtReportDate.Text = "";


        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //string userSam = txtFirstName.Text.Trim();
            //    Session["samjam"] = userSam;
            //string userDeasut = txtFirstName.Text.Trim();
            //Session["deasut"] = userDeasut;

            SqlConnection con = new SqlConnection(System.Configuration.
ConfigurationManager.ConnectionStrings["far_testingConnectionString3"].ToString());  

            try
            {   if (Session["samjam"] != null)
                {

                    string query1 = "insert into samjamReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
                    con.Open();
                    da1.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string query3 = "insert into Reports(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da3 = new SqlDataAdapter(query3, con);
                    con.Open();
                    da3.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string query2 = "insert into camwalReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da2 = new SqlDataAdapter(query2, con);
                    con.Open();
                    da2.SelectCommand.ExecuteNonQuery();
                    con.Close();


                }

                if (Session["tomjef"] != null)
                {
                    string queryTom = "insert into tomjefReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom = new SqlDataAdapter(queryTom, con);
                    con.Open();
                    daTom.SelectCommand.ExecuteNonQuery();
                    con.Close();



                    string queryTom2 = "insert into Reports(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom2 = new SqlDataAdapter(queryTom2, con);
                    con.Open();
                    daTom2.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string queryTom3 = "insert into camwalReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom3 = new SqlDataAdapter(queryTom3, con);
                    con.Open();
                    daTom3.SelectCommand.ExecuteNonQuery();
                    con.Close();





                }
                if (Session["deasut"] != null)
                {
                    string query1 = "insert into deasutReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
                    con.Open();
                    da1.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string query = "insert into Reports(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    con.Open();
                    da.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string query2 = "insert into johsmiReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da2 = new SqlDataAdapter(query2, con);
                    con.Open();
                    da2.SelectCommand.ExecuteNonQuery();
                    con.Close();

                }
                if (Session["camjef"] != null)
                {
                    string query1 = "insert into camjefReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
                    con.Open();
                    da1.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string query = "insert into Reports(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    con.Open();
                    da.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string query2 = "insert into melsmiReport(reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da2 = new SqlDataAdapter(query, con);
                    con.Open();
                    da.SelectCommand.ExecuteNonQuery();
                    con.Close();


                }


            }
            catch
            {

            }



        }

        protected void txtFacultyID_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtReportDate_TextChanged(object sender, EventArgs e)
        {

        }
    }
}

