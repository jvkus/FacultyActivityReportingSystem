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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>

        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="firstName" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="348px" Width="693px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="firstName" HeaderText="firstName" ReadOnly="True" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="lastName" SortExpression="lastName" />
                <asp:BoundField DataField="departmentName" HeaderText="Department Name" SortExpression="departmentName" />
                <asp:BoundField DataField="teachingA" HeaderText="Teaching" SortExpression="teachingA" />
                <asp:BoundField DataField="teachingB" HeaderText="Teaching Reflect" SortExpression="teachingB" />
                <asp:BoundField DataField="serviceA" HeaderText="Service" SortExpression="serviceA" />
                <asp:BoundField DataField="serviceB" HeaderText="Service Reflect" SortExpression="serviceB" />
                <asp:BoundField DataField="scholarlyA" HeaderText="Scholarly" SortExpression="scholarlyA" />
                <asp:BoundField DataField="scholarlyB" HeaderText="Scholarly Reflect" SortExpression="scholarlyB" />
                <asp:BoundField DataField="narrative" HeaderText="Narrative" SortExpression="narrative" />
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
    </form>
</body>
</html>
