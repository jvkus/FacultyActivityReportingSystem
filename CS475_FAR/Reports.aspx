<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CS475_FAR.Reports"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Reports</h1>
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" DataKeyNames="reportDate" DataSourceID="dtReport" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" Height="396px" Width="16px">
                <AlternatingRowStyle BackColor="White" />
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
            <asp:SqlDataSource ID="dtReport" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" DeleteCommand="DELETE FROM [Reports] WHERE [reportDate] = @original_reportDate AND [firstName] = @original_firstName AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND (([departmentName] = @original_departmentName) OR ([departmentName] IS NULL AND @original_departmentName IS NULL)) AND (([teachingA] = @original_teachingA) OR ([teachingA] IS NULL AND @original_teachingA IS NULL)) AND (([teachingB] = @original_teachingB) OR ([teachingB] IS NULL AND @original_teachingB IS NULL)) AND (([serviceA] = @original_serviceA) OR ([serviceA] IS NULL AND @original_serviceA IS NULL)) AND (([serviceB] = @original_serviceB) OR ([serviceB] IS NULL AND @original_serviceB IS NULL)) AND (([scholarlyA] = @original_scholarlyA) OR ([scholarlyA] IS NULL AND @original_scholarlyA IS NULL)) AND (([scholarlyB] = @original_scholarlyB) OR ([scholarlyB] IS NULL AND @original_scholarlyB IS NULL)) AND (([narrative] = @original_narrative) OR ([narrative] IS NULL AND @original_narrative IS NULL))" InsertCommand="INSERT INTO [Reports] ([reportDate], [firstName], [lastName], [departmentName], [teachingA], [teachingB], [serviceA], [serviceB], [scholarlyA], [scholarlyB], [narrative]) VALUES (@reportDate, @firstName, @lastName, @departmentName, @teachingA, @teachingB, @serviceA, @serviceB, @scholarlyA, @scholarlyB, @narrative)" OldValuesParameterFormatString="original_{0}" OnSelecting="dtReport_Selecting" SelectCommand="SELECT * FROM [Reports]" UpdateCommand="UPDATE [Reports] SET [firstName] = @firstName, [lastName] = @lastName, [departmentName] = @departmentName, [teachingA] = @teachingA, [teachingB] = @teachingB, [serviceA] = @serviceA, [serviceB] = @serviceB, [scholarlyA] = @scholarlyA, [scholarlyB] = @scholarlyB, [narrative] = @narrative WHERE [reportDate] = @original_reportDate AND [firstName] = @original_firstName AND (([lastName] = @original_lastName) OR ([lastName] IS NULL AND @original_lastName IS NULL)) AND (([departmentName] = @original_departmentName) OR ([departmentName] IS NULL AND @original_departmentName IS NULL)) AND (([teachingA] = @original_teachingA) OR ([teachingA] IS NULL AND @original_teachingA IS NULL)) AND (([teachingB] = @original_teachingB) OR ([teachingB] IS NULL AND @original_teachingB IS NULL)) AND (([serviceA] = @original_serviceA) OR ([serviceA] IS NULL AND @original_serviceA IS NULL)) AND (([serviceB] = @original_serviceB) OR ([serviceB] IS NULL AND @original_serviceB IS NULL)) AND (([scholarlyA] = @original_scholarlyA) OR ([scholarlyA] IS NULL AND @original_scholarlyA IS NULL)) AND (([scholarlyB] = @original_scholarlyB) OR ([scholarlyB] IS NULL AND @original_scholarlyB IS NULL)) AND (([narrative] = @original_narrative) OR ([narrative] IS NULL AND @original_narrative IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_reportDate" Type="String" />
                    <asp:Parameter Name="original_firstName" Type="String" />
                    <asp:Parameter Name="original_lastName" Type="String" />
                    <asp:Parameter Name="original_departmentName" Type="String" />
                    <asp:Parameter Name="original_teachingA" Type="String" />
                    <asp:Parameter Name="original_teachingB" Type="String" />
                    <asp:Parameter Name="original_serviceA" Type="String" />
                    <asp:Parameter Name="original_serviceB" Type="String" />
                    <asp:Parameter Name="original_scholarlyA" Type="String" />
                    <asp:Parameter Name="original_scholarlyB" Type="String" />
                    <asp:Parameter Name="original_narrative" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="reportDate" Type="String" />
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="departmentName" Type="String" />
                    <asp:Parameter Name="teachingA" Type="String" />
                    <asp:Parameter Name="teachingB" Type="String" />
                    <asp:Parameter Name="serviceA" Type="String" />
                    <asp:Parameter Name="serviceB" Type="String" />
                    <asp:Parameter Name="scholarlyA" Type="String" />
                    <asp:Parameter Name="scholarlyB" Type="String" />
                    <asp:Parameter Name="narrative" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="firstName" Type="String" />
                    <asp:Parameter Name="lastName" Type="String" />
                    <asp:Parameter Name="departmentName" Type="String" />
                    <asp:Parameter Name="teachingA" Type="String" />
                    <asp:Parameter Name="teachingB" Type="String" />
                    <asp:Parameter Name="serviceA" Type="String" />
                    <asp:Parameter Name="serviceB" Type="String" />
                    <asp:Parameter Name="scholarlyA" Type="String" />
                    <asp:Parameter Name="scholarlyB" Type="String" />
                    <asp:Parameter Name="narrative" Type="String" />
                   
                    <asp:Parameter Name="original_reportDate" Type="String" />
                    <asp:Parameter Name="original_firstName" Type="String" />
                    <asp:Parameter Name="original_lastName" Type="String" />
                    <asp:Parameter Name="original_departmentName" Type="String" />
                    <asp:Parameter Name="original_teachingA" Type="String" />
                    <asp:Parameter Name="original_teachingB" Type="String" />
                    <asp:Parameter Name="original_serviceA" Type="String" />
                    <asp:Parameter Name="original_serviceB" Type="String" />
                    <asp:Parameter Name="original_scholarlyA" Type="String" />
                    <asp:Parameter Name="original_scholarlyB" Type="String" />
                    <asp:Parameter Name="original_narrative" Type="String" />
                   
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="reportDate" DataSourceID="dtReport" ForeColor="#333333" GridLines="None" Height="50px" Width="699px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
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
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="reportDate" DataSourceID="dtReport" ForeColor="#333333" Width="652px">
            <EditItemTemplate>
                reportDate:
                <asp:Label ID="reportDateLabel1" runat="server" Text='<%# Eval("reportDate") %>' />
                <br />
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                departmentName:
                <asp:TextBox ID="departmentNameTextBox" runat="server" Text='<%# Bind("departmentName") %>' />
                <br />
                teachingA:
                <asp:TextBox ID="teachingATextBox" runat="server" Text='<%# Bind("teachingA") %>' />
                <br />
                teachingB:
                <asp:TextBox ID="teachingBTextBox" runat="server" Text='<%# Bind("teachingB") %>' />
                <br />
                serviceA:
                <asp:TextBox ID="serviceATextBox" runat="server" Text='<%# Bind("serviceA") %>' />
                <br />
                serviceB:
                <asp:TextBox ID="serviceBTextBox" runat="server" Text='<%# Bind("serviceB") %>' />
                <br />
                scholarlyA:
                <asp:TextBox ID="scholarlyATextBox" runat="server" Text='<%# Bind("scholarlyA") %>' />
                <br />
                scholarlyB:
                <asp:TextBox ID="scholarlyBTextBox" runat="server" Text='<%# Bind("scholarlyB") %>' />
                <br />
                narrative:
                <asp:TextBox ID="narrativeTextBox" runat="server" Text='<%# Bind("narrative") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                reportDate:
                <asp:TextBox ID="reportDateTextBox" runat="server" Text='<%# Bind("reportDate") %>' />
                <br />
                firstName:
                <asp:TextBox ID="firstNameTextBox" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:TextBox ID="lastNameTextBox" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                departmentName:
                <asp:TextBox ID="departmentNameTextBox" runat="server" Text='<%# Bind("departmentName") %>' />
                <br />
                teachingA:
                <asp:TextBox ID="teachingATextBox" runat="server" Text='<%# Bind("teachingA") %>' />
                <br />
                teachingB:
                <asp:TextBox ID="teachingBTextBox" runat="server" Text='<%# Bind("teachingB") %>' />
                <br />
                serviceA:
                <asp:TextBox ID="serviceATextBox" runat="server" Text='<%# Bind("serviceA") %>' />
                <br />
                serviceB:
                <asp:TextBox ID="serviceBTextBox" runat="server" Text='<%# Bind("serviceB") %>' />
                <br />
                scholarlyA:
                <asp:TextBox ID="scholarlyATextBox" runat="server" Text='<%# Bind("scholarlyA") %>' />
                <br />
                scholarlyB:
                <asp:TextBox ID="scholarlyBTextBox" runat="server" Text='<%# Bind("scholarlyB") %>' />
                <br />
                narrative:
                <asp:TextBox ID="narrativeTextBox" runat="server" Text='<%# Bind("narrative") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                reportDate:
                <asp:Label ID="reportDateLabel" runat="server" Text='<%# Eval("reportDate") %>' />
                <br />
                firstName:
                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' />
                <br />
                lastName:
                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' />
                <br />
                departmentName:
                <asp:Label ID="departmentNameLabel" runat="server" Text='<%# Bind("departmentName") %>' />
                <br />
                teachingA:
                <asp:Label ID="teachingALabel" runat="server" Text='<%# Bind("teachingA") %>' />
                <br />
                teachingB:
                <asp:Label ID="teachingBLabel" runat="server" Text='<%# Bind("teachingB") %>' />
                <br />
                serviceA:
                <asp:Label ID="serviceALabel" runat="server" Text='<%# Bind("serviceA") %>' />
                <br />
                serviceB:
                <asp:Label ID="serviceBLabel" runat="server" Text='<%# Bind("serviceB") %>' />
                <br />
                scholarlyA:
                <asp:Label ID="scholarlyALabel" runat="server" Text='<%# Bind("scholarlyA") %>' />
                <br />
                scholarlyB:
                <asp:Label ID="scholarlyBLabel" runat="server" Text='<%# Bind("scholarlyB") %>' />
                <br />
                narrative:
                <asp:Label ID="narrativeLabel" runat="server" Text='<%# Bind("narrative") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
    </form>
</body>
</html>
