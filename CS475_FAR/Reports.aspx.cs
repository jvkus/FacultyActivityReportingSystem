using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;


namespace CS475_FAR
{

    public partial class Reports : System.Web.UI.Page





    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["melsmi"] != null)

                {
                    Roles.CreateRole(Session["melsmi"].ToString());


                    if (GridView1.Rows[1].Cells[3].Text == "math")

                    GridView1.Rows[1].Cells[3].Visible = false;

                    //GridView1.Rows[1].Cells[2].Visible = false;

                    //GridView1.Rows[1].Cells[3].Visible = false;




                    //GVAnswer.Rows[i].Cells[1].Visible = false;
                    //if (GridView1.Rows[i].Cells[3].Text == "math")
                    //    {
                    //        GridView1.Rows[i].Cells[4].Visible = false;
                    //    }
                    //  else
                    //        Response.Write("didn't work");


                }
            }
            catch(Exception ex)
            {
                Response.Write("didn't work");
            }




            }

        private void GridView1_RowDataBound(Object sender, GridViewRowEventArgs e)
        {

        }

        protected void dtReport_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {


              

        }

    }


      
    
}