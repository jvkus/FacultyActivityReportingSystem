﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_faculty.aspx.cs" Inherits="CS475_FAR.Dashboard_faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    </head>
<body>



     <style>@import url('https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap');

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
  margin-left: 200px;
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

.wrapper .main_content .info div{
  margin-bottom: 20px;
}

h1{
    margin:20px;
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

.wrapper .main_content .header h3 .contact {
    
    
}

         .auto-style1 {
             margin-top: 18px;
         }

         .auto-style2 {
             margin-top: 0;
         }

     </style>
    <form id="form2" runat="server">
        <div>
            <h1>Faculty Dashboard </h1>
        </div>

<%--        this tag is to display icons in the sidebar--%>
            <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
    <div class="sidebar">

        <%-- change some of the icons --%>
        <h2>Sidebar</h2>
        <ul>
            <li><a href="dashboard_faculty.aspx"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="profile.aspx"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="#"><i class="fas fa-address-card"></i>About</a></li>
            <li><a href="Reports.aspx"><i class="fas fa-folder"></i>Reports</a></li>
            <%-- for extra pages --%>
      <%--      <li><a href="#"><i class="fas fa-blog"></i></a></li>
            <li><a href="#"><i class="fas fa-address-book"></i></a></li>
            <li><a href="#"><i class="fas fa-map-pin"></i></a></li>--%>
        </ul> 
        
    </div>
    <div class="main_content">
        <%-- make this a collapsible panel --%>

        <div class="header"><h3>Schedule<asp:SqlDataSource ID="scheduleJohn" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT [courseID], [courseName], [startTime], [endTime] FROM [johnsmithSchedule]"></asp:SqlDataSource>
            </h3>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="scheduleJohn" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="courseID" HeaderText="courseID" SortExpression="courseID" />
                        <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
                        <asp:BoundField DataField="startTime" HeaderText="startTime" SortExpression="startTime" />
                        <asp:BoundField DataField="endTime" HeaderText="endTime" SortExpression="endTime" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <div class="header">
            <h3>General Information  </h3>
           <asp:LinkButton ID="linkContact"  runat="server" OnClick="linkContact_Click" Text="Contact & Personal information"/>

        
       </div>
                
        
         <div class="header" style="height: 138px">
             <h3 class="auto-style1">Reports</h3>
             <asp:LinkButton class="linkCreateReport" runat="server" OnClick="linkCreateReport_Click" text="Create a new report"/>
             <br/> </div>
            
        </div>
       
        </div>

    </form>
</body>
</html>
