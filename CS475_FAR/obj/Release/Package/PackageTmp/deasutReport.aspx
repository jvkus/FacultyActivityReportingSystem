<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deasutReport.aspx.cs" Inherits="CS475_FAR.samjamReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1>Reports</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="reportDate" HeaderText="reportDate" ReadOnly="True" SortExpression="reportDate" />
                <asp:BoundField DataField="firstName" HeaderText="firstName" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="departmentName" HeaderText="departmentName" SortExpression="departmentName" />
                <asp:BoundField DataField="teachingA" HeaderText="teachingA" SortExpression="teachingA" />
                <asp:BoundField DataField="teachingB" HeaderText="teachingB" SortExpression="teachingB" />
                <asp:BoundField DataField="serviceA" HeaderText="serviceA" SortExpression="serviceA" />
                <asp:BoundField DataField="serviceB" HeaderText="serviceB" SortExpression="serviceB" />
                <asp:BoundField DataField="scholarlyA" HeaderText="scholarlyA" SortExpression="scholarlyA" />
                <asp:BoundField DataField="scholarlyB" HeaderText="scholarlyB" SortExpression="scholarlyB" />
                <asp:BoundField DataField="narrative" HeaderText="narrative" SortExpression="narrative" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [deasutReport]"></asp:SqlDataSource>
    </form>
</body>
</html>
