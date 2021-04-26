<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CS475_FAR.Reports" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Reports</h1>
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT [firstName], [lastName] FROM [Reports]"></asp:SqlDataSource>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="firstName" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="firstName" HeaderText="firstName" ReadOnly="True" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
