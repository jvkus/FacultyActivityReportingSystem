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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

           string conString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(conString);

            try
            {
            string sqlStmt= "insert into Reports (firstName, lastName)  Values (@firstName, @lastName) ";
                SqlConnection cn = null;
                SqlCommand cmd = null;
                cn = new SqlConnection(conString);
                cmd = new SqlCommand(sqlStmt, cn);
 cmd.Parameters.Add(new SqlParameter("@firstName", SqlDbType.VarChar, 1000));
                cmd.Parameters.Add(new SqlParameter("@LastName", SqlDbType.VarChar, 1000));
cmd.Parameters["@lastName"].Value = txtLastName.Text;
                cmd.Parameters["@firstName"].Value = txtFirstName.Text;
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            catch
            {

            }
            //sqlconn.Open();





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
    }
}