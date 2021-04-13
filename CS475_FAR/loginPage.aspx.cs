﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data;
using static System.Exception;

namespace CS475_FAR
{
    public partial class loginPage : System.Web.UI.Page
    {
        
       

        protected void Page_Load(object sender, EventArgs e)
        {
          
            //DropDownList1.Items.Add(new ListItem("UserType"));
            DropDownList1.Items.Add("admin");

            DropDownList1.Items.Add("dean");
            DropDownList1.Items.Add("chair");
            DropDownList1.Items.Add("faculty");



        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where userName =@userName and Password=@Password", con);
            cmd.Parameters.AddWithValue("@userName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            
            if (dt.Rows.Count > 0)
            {

                if (DropDownList1.SelectedValue == "admin")

                    Response.Redirect("Dashboard_admin.aspx");
                if (DropDownList1.SelectedValue == "dean")
                    Response.Redirect("Dashboard_dean.aspx");
                if (DropDownList1.SelectedValue == "chair")
                    Response.Redirect("Dashboard_chair.aspx");
                if (DropDownList1.SelectedValue == "faculty")
                    Response.Redirect("Dashboard_faculty.aspx");

            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Wrong Password";
            }

        }
        }
    }
