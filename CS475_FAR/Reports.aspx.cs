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
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp.text.pdf;

namespace CS475_FAR
{

    public partial class Reports : System.Web.UI.Page





    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
         if(Session["hensmi"] != null)
                {
                    deanReportGV.Visible = true;
                   

                        
                }

                if(Session["melsmi"] != null)
                {

                    melsmiReportGV.Visible = true; 
                }

                if (Session["camwal"] != null)
                {
                   
                    deasutReportGV.Visible = false;

                }
                if (Session["samjam"] != null)
                {                    samjamReportGV.Visible = true;

                   
                    deasutReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    deanReportGV.Visible = false;

                }

                // Roles.CreateRole(Session["meslmi"].ToString());


                //if (GridView1.Rows[1].Cells[3].Text == "math")

                //GridView1.Rows[1].Cells[3].Visible = false;

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

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            samjamReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            samjamReportGV.AllowPaging = true;
            samjamReportGV.DataBind();

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }
    }


      
    
}