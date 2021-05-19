using System;
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
            

            string userSam = TextBox1.Text.Trim();
            string userTom = TextBox1.Text.Trim();
            string user = TextBox1.Text.Trim();
            string userMelsmi = TextBox1.Text.Trim();
            string userCamwal = TextBox1.Text.Trim();
            string userDeasut = TextBox1.Text.Trim();
            string userCamjef = TextBox1.Text.Trim();
            string userHensmi = TextBox1.Text.Trim();




            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Login where userName =@userName and Password=@Password and userType=@userType", con);
            cmd.Parameters.AddWithValue("@userName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
            cmd.Parameters.AddWithValue("@userType", DropDownList1.SelectedValue);


            //////if (dt.Rows.Count > 0)
            //////{
            //////    Session["New"] = UserName.Text;

            //////}
            //////else

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            if (dt.Rows.Count > 0)
            {
                string userType = Convert.ToString(cmd.ExecuteScalar());
                Session["user"] = user;
                Session["samjam"] = userSam;
                Session["tomjef"] = userTom;
                Session["melsmi"] = userMelsmi;
                Session["camwal"] = userCamwal;
                Session["deasut"] = userDeasut;
                Session["camjef"] = userCamjef;
                Session["hensmi"] = userHensmi;


                //Roles chairRole = new Roles();
                //userMelsmi = chairRole.username;
                //Roles roles = new Roles();
                //userCamwal = roles.username;

                //if (chairRole.username == userMelsmi)
                //{
                //    userMelsmi = "computer science";
                //    user = Session["melsmi"].ToString();
                //}
                //if (roles.username == userCamwal)
                //{
                //    userCamwal = "history";
                //    user = Session["camwal"].ToString();
                //}

                if (DropDownList1.SelectedItem.Value == "admin" && userType == "admin")

                    Response.Redirect("Dashboard_admin.aspx");
                else if (DropDownList1.SelectedItem.Value == "dean" && userType == "dean")
                    Response.Redirect("Dashboard_dean.aspx");
                else if (DropDownList1.SelectedItem.Value == "chair" && userType == "chair")
                    Response.Redirect("Dashboard_chair.aspx");
                else if (DropDownList1.SelectedItem.Value == "faculty" && userType == "faculty")
                    Response.Redirect("Dashboard_faculty.aspx");


                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Wrong Password";
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}