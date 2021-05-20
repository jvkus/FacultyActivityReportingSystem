<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="CS475_FAR.loginPage"  %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <style>
        
body {
  font: 13px/20px "Lucida Grande", Tahoma, Verdana, sans-serif;
  color: #404040;
  background: #302c8f;
}

.login {
  position: relative;
  margin: 200px auto;
  padding: 40px 40px 40px;
  width: 360px;
  background: white;
  border-radius: 7px;
  box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}

.login:before {
  position: absolute;
  top: -8px;
  right: -8px;
  bottom: -8px;
  left: -8px;
  z-index: -50;
  background: rgba(0, 0, 0, 0.08);
  border-radius: 4px;
}

.login h1 {
  margin: -20px -20px 15px;
  padding-top: 5px;
  line-height: 40px;
  font-size: 30px;
  font-weight: bold;
  color: #2c384d;
  text-align: center;
  text-shadow: 0 1px 3px #8690c2;
  background: #e1ecf2;
  border-bottom: 0;
  border-radius: 3px 3px 0 0;
/*  background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
  background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
  -webkit-box-shadow: 0 1px whitesmoke;
  box-shadow: 0 1px whitesmoke;*/
}

.login h2 {
  margin: -20px -20px 21px;
  padding-bottom: 5px;
  line-height: 40px;
  font-size: 20px;
  font-weight: normal;
  color: #2c384d;
  text-align: center;
  text-shadow: 0 1px 3px #8690c2;
  background: #e1ecf2;
  border-bottom: 1px solid #7394d1;
  border-radius: 3px;
}

.login p {
  margin: 50px 0 0;
}



.login input[type=text], .login input[type=password] {
  width: 200px;
}



.login p.submit {
  text-align: right;
}


input {
  font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
  font-size: 14px;
}


input[type=password]{
    margin:40px;
}

input[type=text], input[type=password] {
  margin: 5px;
  padding: 0 10px;
  width: 200px;
  height: 34px;
  
  color: #404040;
  background: white;
  border: 1px solid;
  border-color: #c4c4c4 #d1d1d1 #d4d4d4;
  border-radius: 2px;
  outline: 5px solid #e1ecf2;
 /* -moz-outline-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);*/
}

#DropDownList1 {
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    margin-top: 5px;
    padding: 5px;
    border: 3px solid #504c9f;
}


input[type=submit] {
  padding: 0 18px 2px 18px;
  margin: 10px 20px;
  /*margin-left:50px;*/
  height: 36px;
  font-size: 16px;
  font-weight: normal;
  /* color: #527881; */
  color: #ffffff;
  text-shadow: 0px 0px 6px #b5d3ff;
  background: #504c9f;
  border: 1px solid;
  /* border-color: #b4ccce #b3c0c8 #9eb9c2; */
  border-radius: 5px;
  outline: 0;
  letter-spacing: 2px;
  /*-webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);*/
}

input[type=submit]:active {
  background: #cde5ef;
  border-color: #9eb9c2 #b3c0c8 #b4ccce;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}

input[type=submit]:hover {
    background-color: #302c7f;
    text-shadow: 0 0 8px #bffffc;
}

/* Centers form */
.auto-style1 {
    margin: 0 auto;
}

.login td {
    display: flex;
    justify-content: center;
}
   
    </style>
    <div class="login">
        <h1>FARS</h1>
        <h2>Faculty Activity Reporting System</h2>
    <form method = "post" id= "form1" runat="server">
        <table class="auto-style1">
            <tr>

            </tr>
            <tr>
                
<%--            <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server">username</asp:Label>
                </td>--%>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
<%--            <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>--%>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="loginDs" DataTextField="userType" DataValueField="userType" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                                    <asp:ListItem Text="User type" Value="1"></asp:ListItem>

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="loginDs" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT [userType] FROM [userRole]">


                                  <SelectParameters>

                <asp:SessionParameter Name="userName" SessionField="mySessionVariable" Type="String" />


                    </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log in" />
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
                
            </tr>
            
        </table>
    <div>
    
    </div>
        </form>
        </div>
   
</body>
</html>