<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Report.aspx.cs" Inherits="CS475_FAR.Create_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title></title>
    <style <%--type="text/css--%>>
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            height: 48px;
            width: 131px;
        }
        .auto-style5 {
            height: 72px;
            width: 131px;
        }
        .auto-style6 {
            height: 72px;
            width: 988px;
        }
        .auto-style7 {
            width: 131px;
        }
        .auto-style8 {
            height: 24px;
            width: 131px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
            width: 982px;
        }
        .auto-style12 {
            height: 48px;
            width: 982px;
        }
        .auto-style13 {
            width: 982px;
        }
        .auto-style14 {
            height: 72px;
            width: 982px;
        }
        .auto-style16 {
            margin-left: 2px;
        }
        .auto-style17 {
            height: 24px;
            width: 180px;
        }
        .auto-style18 {
            height: 72px;
            width: 180px;
        }
        .auto-style19 {
            height: 48px;
            width: 180px;
        }
        .auto-style20 {
            width: 180px;
        }
        .auto-style23 {
            margin-left: 36px;
            margin-top: 0px;
        }
        .auto-style26 {
            width: 433px;
        }
        .auto-style27 {
            width: 433px;
            height: 54px;
        }
        .auto-style28 {
            height: 54px;
        }
        
        *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
  font-family: 'Josefin Sans', sans-serif;
}

body{
   background-color: #f3f5f9;
}

.wrapper{
  display: flex;
  position: relative;
}

.wrapper .sidebar{
  width: 200px;
  height: 100%;
  background: #555555;
  padding: 30px 0px;
  display: flex;
}

.sidebar {
    height: 100vh;
    position: absolute;
    float: left;
}

.sidecontent {
    width: 200px;
    position: fixed;
}

.wrapper .sidebar h2{
  color: #fff;
  text-align: center;
  margin-bottom: 30px;
}

.wrapper .sidebar ul li{
  padding: 15px;
  border-bottom: 1px solid #bdb8d7;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    

.wrapper .sidebar ul li a{
  color: #bdb8d7;
  display: block;
}

.wrapper .sidebar ul li a .fas{
  width: 25px;
}

.wrapper .sidebar ul li:hover{
  background-color: #594f8d;
}
    
.wrapper .sidebar ul li:hover a{
  color: #fff;
}
 


.wrapper .main_content{
  width: 100%;
  margin-left: 20px;
}

.wrapper .main_content .header{
  padding: 20px;
  background: #fff;
  color: #717171;
  border-bottom: 1px solid #e0e4e8;
}

.wrapper .main_content .info{
  margin: 20px;
  line-height: 25px;

  /*padding: 20px;
  background: #fff;
  color: #717171;
  border-bottom: 1px solid #e0e4e8;*/
}
.wrapper .main_content {
    margin-left:240px;
}
.wrapper .main_content .info div{
  margin-bottom: 20px;
}

.wrapper .main_content .header p{
    margin-bottom:20px;
    margin-left:23px
    
}
.wrapper .main_content h3{
   margin:20px;
 
}
.wrapper .main_content .header {
    margin:30px 0 0;
}


         .auto-style1 {
             margin-top: 18px;
         }

      

.btnSubmit {
	border-radius:6px;
	display:inline-block;
	cursor:pointer;
	font-weight:bold;
	text-decoration:none;
}
.btnSubmit:active {
	position:relative;
	top:1px;
}
        .auto-style29 {
            margin-left: 0px;
        }
        .auto-style30 {
            height: 24px;
            width: 311px;
        }
        .auto-style31 {
            height: 72px;
            width: 311px;
        }
        .auto-style32 {
            height: 48px;
            width: 311px;
        }
        .auto-style33 {
            width: 311px;
        }

       .wrapper .main_content {
           
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif
        }

       .mainbutton {
            color: white;
            border: 0;
            font-size: 20px;
            padding: 5px 15px;
            background-color: #504c9f;
            text-shadow: 0px 0px 6px #b5d3ff;
            border-radius: 3px;
            margin-bottom: 30px;
            margin-right: 15px;
        }

        .mainbutton:hover {
            background-color: #302c7f;
            text-shadow: 0 0 8px #bffffc;
        } 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="imgHeader" style="margin:20px"> 
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Elmhurst_University_logo.png" Height ="100" />
            <br />
      <h1 class="auto-style34" style="margin-top:20px">Create A New Report</h1></div>
              <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
       
<div class="wrapper">
    <div class="sidebar">
        <%-- change some of the icons --%>
        <div class="sidecontent">
        <h2>FARS</h2>
        <ul>
            <li>
                <a href="dashboard_faculty.aspx">
                    <i class="fas fa-home"></i>
                    Home
                </a>
            </li>
           <%-- <li><a href="profile.aspx"><i class="fas fa-user"></i>Profile</a></li>--%>
            <li><a href="#"><i class="fas fa-address-card"></i>About</a></li>
            <li><a href="reports.aspx"><i class="fas fa-folder"></i>Reports</a></li>
              </ul>
        </div>
        
    </div> 
    <div class="main_content"> 
    <div>
   
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="auto-style16" OnTextChanged="txtFirstName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;
                    </td>
                    <td class="auto-style30">
                        <asp:Label ID="lblFirstName0" runat="server" Text="Year of Report:"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtReportDate" runat="server" CssClass="auto-style29" OnTextChanged="txtReportDate_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        </td>
                    <td class="auto-style31">
                        <asp:Label ID="lblFacultyID" runat="server" Text="Faculty ID:"></asp:Label>
                        </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtFacultyID" runat="server" CssClass="auto-style29" OnTextChanged="txtFacultyID_TextChanged"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblDept" runat="server" Text="Department Name: "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtDeptName" runat="server" OnTextChanged="txtDeptName_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style32">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td class="auto-style33">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
        </div>
        <p>
                        &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblTeaching" runat="server">1) Teaching</asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblTeachingQ" runat="server">A) For your reference and context, you may list courses taught and enrollment in those courses, and number of advisees (since the Dean/VPAA is able to obtain much of this information electronically, providing specific information is optional). You may wish to focus on work with individual students, such as independent studies, collaborative research, field work, internships, etc.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtTeaching" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtTeaching_TextChanged" ></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblTeachingReflectQ" runat="server">B) Please reflect on your teaching accomplishments during the past academic year. Describe current and future goals for teaching (new/revised courses, new pedagogies you have used/plan to explore).</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtReflect" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtReflect_TextChanged" ></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style27"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblService" runat="server">2) Service</asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblServiceQ" runat="server">A) Please identify and list your service during the past academic year. Be sure to distinguish between departmental, college-wide, and service to the community/profession.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtService" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtService_TextChanged"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblServiceReflectQ" runat="server">B) Please reflect on your service accomplishments during the past academic year. Describe current and future goals for service.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtServiceReflect" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtServiceReflect_TextChanged"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblScholarly" runat="server">3)  Scholarly and Creative Activity</asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblScholarlyQ" runat="server">A) Recognizing that scholarship is defined differently and broadly across and among disciplines and fields, please list your grants, publications, and/or significant creative/scholarly activities during the past academic year. If relevant, indicate whether your scholarship was peer-reviewed. Include full citation information, with links to online sources, when possible. Please be sure to include co-authors, if applicable.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtScholarly" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtScholarly_TextChanged"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblScholarlyReflectQ" runat="server">B) Please reflect on your accomplishments related to scholarly and creative activity during the past academic year. Describe current and future goals for scholarly and creative activity, including works in progress, revised/continued or new projects, upcoming submissions or presentations/exhibits/shows, etc.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtScholarlyReflect" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtScholarlyReflect_TextChanged"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                        &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblNarrativeReflective" runat="server">4) Narrative Reflection</asp:Label>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">
                        <asp:Label ID="lblNarrativeQ" runat="server">Please share your thoughts about College initiatives and your thoughts about the direction and future of the college, as well as your concerns and needs. Please include any additional comments you&#39;d like to share with your Chair and Dean/VPAA in this section.</asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtNarrative" runat="server" Height="117px" Width="413px" TextMode="MultiLine" CssClass="auto-style23" OnTextChanged="txtNarrative_TextChanged"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><div class="btnSubmit">
                    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass ="mainbutton"/></div>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" CssClass="mainbutton" />
                    &nbsp;
                    &nbsp;
                </td>
            </tr>
            
        </table></div>
    </div>
    </form>
</body>
</html>