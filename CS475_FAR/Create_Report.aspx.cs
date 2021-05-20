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
            {
                if (Session["deasut"] != null)
                {

                    string queryDea2 = "insert into Reports(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daDea2 = new SqlDataAdapter(queryDea2, con);
                    con.Open();
                    daDea2.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string queryDea3 = "insert into johsmiReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daDea3 = new SqlDataAdapter(queryDea3, con);
                    con.Open();
                    daDea3.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string queryDea = "insert into deasutReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daDea = new SqlDataAdapter(queryDea, con);
                    con.Open();
                    daDea.SelectCommand.ExecuteNonQuery();
                    con.Close();


                }
                if (Session["user"].ToString() == "samjam" && Session["user"] != null) 
                {

                    string querySam = "insert into samjamReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daSam = new SqlDataAdapter(querySam, con);
                    con.Open();
                    daSam.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string querySam2 = "insert into Reports(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daSam2 = new SqlDataAdapter(querySam2, con);
                    con.Open();
                    daSam2.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string querySam3 = "insert into camwalReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daSam3 = new SqlDataAdapter(querySam3, con);
                    con.Open();
                    daSam3.SelectCommand.ExecuteNonQuery();
                    con.Close();


                }

                if (Session["tomjef"] != null)
                {
                    string queryTom = "insert into tomjefReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom = new SqlDataAdapter(queryTom, con);
                    con.Open();
                    daTom.SelectCommand.ExecuteNonQuery();
                    con.Close();



                    string queryTom2 = "insert into Reports(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom2 = new SqlDataAdapter(queryTom2, con);
                    con.Open();
                    daTom2.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string queryTom3 = "insert into camwalReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter daTom3 = new SqlDataAdapter(queryTom3, con);
                    con.Open();
                    daTom3.SelectCommand.ExecuteNonQuery();
                    con.Close();





                }
               
                if (Session["camjef"] != null)
                {
                    string query1 = "insert into camjefReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
                    con.Open();
                    da1.SelectCommand.ExecuteNonQuery();
                    con.Close();


                    string query = "insert into Reports(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
                    SqlDataAdapter da = new SqlDataAdapter(query, con);
                    con.Open();
                    da.SelectCommand.ExecuteNonQuery();
                    con.Close();

                    string query2 = "insert into melsmiReport(facultyID, reportDate, firstName, lastName, departmentName, teachingA, teachingB, serviceA, serviceB, scholarlyA, scholarlyB, narrative) values('" + txtFacultyID.Text + "','" + txtReportDate.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDeptName.Text + "','" + txtTeaching.Text + "','" + txtReflect.Text + "','" + txtService.Text + "','" + txtServiceReflect.Text + "','" + txtScholarly.Text + "','" + txtScholarlyReflect.Text + "','" + txtNarrative.Text + "')";
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

