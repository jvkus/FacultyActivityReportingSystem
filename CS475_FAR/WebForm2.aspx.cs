//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using System.Data;
//using System.Data.Sql;
//using System.Web.Security;
//using System.Data.SqlClient;
//using System.Configuration;
//namespace CS475_FAR
   
//{
//    public partial class WebForm2 : System.Web.UI.Page
//    {


//            protected void Page_Load(object sender, EventArgs e)
//            {


//            //GET ALL USERS FROM DATABASE.
//            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
//            string db = con.ToString();
//            var SQLUSER = "SELECT Email FROM UserProfile";
//            var users = db.Query(SQLUSER);





//            var roles = Roles.GetAllRoles();//GET ALL ROLES


//            var msg = "";



//            var user = Request["user"];
//            var role = Request["role"];


//            if (!Roles.IsUserInRole(user, role))
//            {//MAKE SURE USER IS NOT IN THE CURRENT ROLE.
//                Roles.AddUsersToRoles(new[]{user
//    }, new[]{role
//});//ADD USER TO ROLE
//                msg = user + " Has been added to the role " + role;
//            }
//            else
//            {
//                msg = user + " Is already in role " + role;
//            }
//        }

//    }
//}
