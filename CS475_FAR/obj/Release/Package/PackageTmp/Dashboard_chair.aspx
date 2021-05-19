<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_chair.aspx.cs" Inherits="CS475_FAR.Dashboard_chair" %>

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

}</style>
    <form id="form1" runat="server">
        <div>
            <h1>
                <img alt="" src="Elmhurst_University_logo.png" height = "100"/></h1>
            <h1>Welcome Back Chair
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </h1>
            <div>
                </div>
            <hr />
        </div>

<%--        this tag is to display icons in the sidebar--%>
            <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
    <div class="sidebar">

        <%-- change some of the icons --%>
        <h2>FARS</h2>
        <ul>
            <li><a href="dashboard_chair.aspx"><i class="fas fa-home"></i>Home</a></li>
<%--            <li><a href="profile.aspx"><i class="fas fa-user"></i>Profile</a></li>--%>
            <li><a href="#"><i class="fas fa-address-card"></i>About</a></li>
            <li><a href="reports.aspx"><i class="fas fa-folder"></i>Reports</a></li>
            <%-- for extra pages --%>
      <%--      <li><a href="#"><i class="fas fa-blog"></i></a></li>
            <li><a href="#"><i class="fas fa-address-book"></i></a></li>
            <li><a href="#"><i class="fas fa-map-pin"></i></a></li>--%>
        </ul> 
        
    </div>
    <div class="main_content">
        <div class="header">General Information<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="facultyID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="facultyID" HeaderText="facultyID" ReadOnly="True" SortExpression="facultyID" />
                    <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                    <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                    <asp:BoundField DataField="deptName" HeaderText="deptName" SortExpression="deptName" />
                    <asp:BoundField DataField="chairID" HeaderText="chairID" SortExpression="chairID" />
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
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT [facultyID], [firstName], [lastName], [deptName], [chairID] FROM [faculty]"></asp:SqlDataSource>
        </div>
       
                <div class="header">Reports<br />
                    <br />
                    <asp:LinkButton ID="linkReports" runat="server" OnClick="linkReports_Click" Text="View All Reports" />
        </div>

            
        </div>
       
        </div>


    </form>
</body>
</html>