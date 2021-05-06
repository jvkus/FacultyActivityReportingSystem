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
  background: #0ca3d2;
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
  margin: -20px -20px 21px;
  line-height: 40px;
  font-size: 30px;
  font-weight: bold;
  color: #555;
  text-align: center;
  text-shadow: 0 1px white;
  background: #f3f3f3;
  border-bottom: 1px solid #cfcfcf;
  border-radius: 3px 3px 0 0;
/*  background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
  background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
  -webkit-box-shadow: 0 1px whitesmoke;
  box-shadow: 0 1px whitesmoke;*/
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
  outline: 5px solid #eff4f7;
 /* -moz-outline-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);*/
}

#DropDownList1 {
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}


input[type=submit] {
  padding: 0 18px;
  margin:20px;
  margin-left:50px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
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



   
    </style>
    <div class="login">
        <h1>FARS</h1>
    <form method = "post" id= "form1" runat="server">
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style2">
<%--                    <asp:Label ID="Label1" runat="server">username</asp:Label>--%>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="username"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">
<%--                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>--%>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="loginDs" DataTextField="userType" DataValueField="userType" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                                    <asp:ListItem Text="Usertype" Value="1"></asp:ListItem>

                    </asp:DropDownList>
                    <asp:SqlDataSource ID="loginDs" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT [userType] FROM [userRole]">


                                  <SelectParameters>

                <asp:SessionParameter Name="userName" SessionField="mySessionVariable" Type="String" />


                    </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
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