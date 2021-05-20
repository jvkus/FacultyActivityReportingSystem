using System;
using System.IO;
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

using iTextSharp.text.pdf;

namespace CS475_FAR
{

    public partial class Reports : System.Web.UI.Page





    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               
               
         if(Session["user"].ToString() == "hensmi")
                {    deanReportGV.Visible = true;
                    btnDownloadHensmi.Visible = true;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = false;
                   
                
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    samjamReportGV.Visible = false;
                    tomjefReportGV.Visible = false;
                    
                     

                        
                }

                if (Session["user"].ToString() == "melsmi")
                {
                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = true;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = false;
                    melsmiReportGV.Visible = true;
                   
                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    samjamReportGV.Visible = false;
                    tomjefReportGV.Visible = false;
                }

                if (Session["user"].ToString() == "camwal")
                {
                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = true;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = false;
                    camwalReportGV.Visible = true;

                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    samjamReportGV.Visible = false;
                    tomjefReportGV.Visible = false;

                }
                if (Session["user"].ToString() == "samjam")
                { samjamReportGV.Visible = true;
                
                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    tomjefReportGV.Visible = false;

                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = true;
                    btnDownloadTomjef.Visible = false;


                }

                if (Session["user"].ToString() == "tomjef")
                {
                    samjamReportGV.Visible = false;

                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    tomjefReportGV.Visible = true;

                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = true;
                }

                if (Session["user"].ToString() == "deasut")
                {
                    samjamReportGV.Visible = false;

                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = false;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = true;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    tomjefReportGV.Visible = false;
                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = false;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = true;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = false;
                }

                if (Session["user"].ToString() == "camjef")
                {
                    samjamReportGV.Visible = false;

                    deanReportGV.Visible = false;
                    camjefReportGV.Visible = true;
                    camwalReportGV.Visible = false;
                    deasutReportGV.Visible = false;
                    johsmiReportGV.Visible = false;
                    melsmiReportGV.Visible = false;
                    tomjefReportGV.Visible = false;
                    btnDownloadHensmi.Visible = false;
                    btnDownloadCamjef.Visible = true;
                    btnDownloadCamwal.Visible = false;
                    btnDownloadDeasut.Visible = false;
                    btnDownloadJohsmi.Visible = false;
                    btnDownloadMelsmi.Visible = false;
                    btnDownloadSamjam.Visible = false;
                    btnDownloadTomjef.Visible = false;
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

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnDownloadSamjam_Click(object sender, EventArgs e)
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


        protected void btnHome_Click(object sender, EventArgs e)
        {
            if(Session["user"].ToString() == "melsmi")
            {
                Response.Redirect("Dashboard_chair.aspx");
            }

            if (Session["user"].ToString() == "tomjef")
            {
                Response.Redirect("Dashboard_faculty.aspx");
            }
            if (Session["user"].ToString() == "hensmi")
            {
                Response.Redirect("Dashboard_dean.aspx");
            }
            if (Session["user"].ToString() == "johsmi")
            {
                Response.Redirect("Dashboard_chair.aspx");
            }


            if (Session["user"].ToString() == "camwal")
            {
                Response.Redirect("Dashboard_chair.aspx");
            }


            if (Session["user"].ToString() == "samjam")
            {
                Response.Redirect("Dashboard_faculty.aspx");
            }


            if (Session["user"].ToString() == "deasut")
            {
                Response.Redirect("Dashboard_faculty.aspx");
            }

            if (Session["user"].ToString() == "camjef")
            {
                Response.Redirect("Dashboard_faculty.aspx");
            }
        }




        protected void btnDownloadDeasut_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            deasutReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
           deasutReportGV.AllowPaging = true;
           deasutReportGV.DataBind();
        }

        protected void btnDownloadTomjef_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
           tomjefReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
           tomjefReportGV.AllowPaging = true;
            tomjefReportGV.DataBind();
           
        }

        protected void btnDownloadCamjef_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            camjefReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
           camjefReportGV.AllowPaging = true;
            camjefReportGV.DataBind();

        }

        [Obsolete]
        protected void btnDownloadHensmi_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            deanReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            deanReportGV.AllowPaging = true;
            deanReportGV.DataBind();
        }

        protected void btnDownloadJohsmi_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            johsmiReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            johsmiReportGV.AllowPaging = true;
            johsmiReportGV.DataBind();
        }

        protected void btnDownloadMelsmi_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            melsmiReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            melsmiReportGV.AllowPaging = true;
            melsmiReportGV.DataBind();
        }

        protected void btnDownloadCamwal_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment; filename=reports.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            camwalReportGV.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfdoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparse = new HTMLWorker(pdfdoc);
            PdfWriter.GetInstance(pdfdoc, Response.OutputStream);
            pdfdoc.Open();
            htmlparse.Parse(sr);
            pdfdoc.Close();
            Response.Write(pdfdoc);
            Response.End();
            camwalReportGV.AllowPaging = true;
            camwalReportGV.DataBind();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
        }

    }



      
    
}