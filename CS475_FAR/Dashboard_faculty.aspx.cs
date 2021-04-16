using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS475_FAR
{
    public partial class Dashboard_faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void linkContact_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void linkTeaching_Click(object sender, EventArgs e)
        {

        }

        protected void linkAdvising_Click(object sender, EventArgs e)
        {

        }
    }
}