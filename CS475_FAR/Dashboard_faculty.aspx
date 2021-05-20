<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_faculty.aspx.cs" Inherits="CS475_FAR.Dashboard_faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

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
  position:fixed;
  
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
  position:sticky;
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
.wrapper .main_content GridView1{


}

         .auto-style1 {
             margin-top: 18px;
         }

         .auto-style2 {
             margin-top: 0;
         }

         .auto-style3 {
             width: 100%;
         }
         .auto-style5 {
             width: 316px;
             height: 102px;
         }

         .auto-style7 {
             height: 74px;
             margin-left:125px;
             margin-bottom:0px;
             width: 457px;
         }
         .auto-style7 label Label1 {
             font-size:50px;
         }
        h1.auto-style7{
            font-size:16px;
            margin-left:auto;
        }
       
        img.auto-style3{
            left:auto;
        }
         .auto-style8 {
             margin-right: 50px;
         }
         .auto-style9 {
             height: 102px;
         }
     </style>
    <title></title>

    </head>
<body>



     <form id="form2" runat="server">
         <div>
             <div>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">
                <img alt="" src="Elmhurst_University_logo.png" height="100" class="auto-style8" /></td>
                        <td class="auto-style9">
                            <h1 class="auto-style7">Welcome back, 
                <asp:Label ID="Label1" runat="server"></asp:Label>
               <br />
                            <asp:Button ID="logoffBtn" runat="server" CssClass="btn btn-dark"

                                ForeColor="white" OnClick="logoffBtn_Click" Text="Logout" Height="36px" Width="141px" />
                </h1>
                        </td>
                    </tr>
                    </table>
           
                <br />
           
                </div>
        </div>

<%--        this tag is to display icons in the sidebar--%>
            <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
    <div class="sidebar">

        <%-- change some of the icons --%>
        <h2>FARS</h2>
        <ul>
            <li><a href="dashboard_faculty.aspx"><i class="fas fa-home"></i>Home</a></li>
            <li><a href="#"><i class="fas fa-user"></i>Profile</a></li>
            <li><a href="about.aspx"><i class="fas fa-address-card"></i>About</a></li>
                        <li><a href="reports.aspx"><i class="fas fa-folder"></i>Reports</a></li>

                <%--  <li><a href="Reports.aspx"><i class="fas fa-folder"></i>Reports</a></li>--%>            <%-- for extra pages --%>      <%--      <li><a href="#"><i class="fas fa-blog"></i></a></li>
            <li><a href="#"><i class="fas fa-address-book"></i></a></li>
            <li><a href="#"><i class="fas fa-map-pin"></i></a></li>--%>
        </ul> 
        
    </div>
    <div class="main_content">

        <div class="header"><h3>Schedule<asp:SqlDataSource ID="scheduleJohn" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString %>" SelectCommand="SELECT * FROM [johnsmithSchedule]">
  
            
                                        </asp:SqlDataSource>
            </h3>
            <div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="scheduleJohn" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Height="231px" Width="594px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="courseID" HeaderText="courseID" SortExpression="courseID" ItemStyle-Width="100" />
                        <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" ItemStyle-Width="100" />
                        <asp:BoundField DataField="startTime" HeaderText="startTime" SortExpression="startTime" ItemStyle-Width="100" />
                        <asp:BoundField DataField="endTime" HeaderText="endTime" SortExpression="endTime" ItemStyle-Width="100" />
                        <asp:BoundField DataField="Days" HeaderText="Days" SortExpression="Days" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
        </div>
                
        
         <div class="header" style="height: 160px">
             <h3 class="auto-style1">Reports</h3>
             <asp:LinkButton class="linkCreateReport" runat="server" OnClick="linkCreateReport_Click" text="Create a new report"/>
             <br />
            <asp:LinkButton class="Reports" runat="server" OnClick="linkReport_Click" text="View Reports" ID="LinkButton1"/>


             <br />


             <br />
             <br />
                     

         </div>
            
        </div>
       
        </div>

    </form>
</body>
</html>