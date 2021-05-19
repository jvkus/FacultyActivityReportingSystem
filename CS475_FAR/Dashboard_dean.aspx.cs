using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS475_FAR
{
    public partial class Dashboard_dean : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

                Label1.Text = Session["user"].ToString();

            }
        }

        protected void linkReports_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reports.aspx");

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void logoffBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("loginPage.aspx");
        }
    }
    }