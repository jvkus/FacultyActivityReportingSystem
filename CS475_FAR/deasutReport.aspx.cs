using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS475_FAR
{
    public partial class samjamReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["samjam"] != null)
            {
                GridView1.Visible = true;
            }
            if(Session["samjam"] == null)
            {
                GridView1.Visible = false;
            }
        }
    }
}