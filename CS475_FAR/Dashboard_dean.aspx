<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_dean.aspx.cs" Inherits="CS475_FAR.Dashboard_dean" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
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

th, td {
    padding: 2px 5px;
}

}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 39px;
        }
        .auto-style3 {
            height: 39px;
            width: 766px;
        }
        .auto-style4 {
            width: 766px;
        }

        .auto-style7 label Label1 {
            font-size:50px;
        }
        h1.auto-style7 {
            font-size:16px;
            margin-left:auto;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <h1>
                <table class="auto-style1" style="margin-bottom:20px">
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Elmhurst_University_logo.png" Height="100" />
                        </td>
                        <td class="auto-style2">
                            <h1 class="auto-style7">Welcome back, 
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                                <asp:Button ID="logoffBtn" runat="server" CssClass="btn btn-dark" ForeColor="white" OnClick="logoffBtn_Click" Text="Log out" Height="36px" Width="141px" />
                            </h1>
                        </td>
                    </tr>
                    <%--<tr>
                        <td class="breaker">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr> --%>
                </table>
                Dean Dashboard
            </h1>
        </div>

<%--        this tag is to display icons in the sidebar--%>
            <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

<div class="wrapper">
    <div class="sidebar">

        <%-- change some of the icons --%>
        <h2>FARS</h2>
        <ul>
            <li><a href="dashboard_dean.aspx"><i class="fas fa-home"></i>Home</a></li>
<%--            <li><a href="profile.aspx"><i class="fas fa-user"></i>Profile</a></li>--%>
            <li><a href="about.aspx"><i class="fas fa-address-card"></i>About</a></li>
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
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="deanID" HeaderText="Dean ID" SortExpression="deanID" />
                    <asp:BoundField DataField="chairID" HeaderText="Chair ID" SortExpression="chairID" />
                    <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                    <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                    <asp:BoundField DataField="facultyID" HeaderText="Faculty ID" ReadOnly="True" SortExpression="facultyID" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT [deanID], [chairID], [lastName], [firstName], [facultyID] FROM [faculty]"></asp:SqlDataSource>
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