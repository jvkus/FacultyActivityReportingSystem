<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="CS475_FAR.Reports"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />

    <title></title>
</head>
<body style ="background-color:lightgrey;">
    <style>



        h1{
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
        }
        </style>

    <form id="form1" runat="server">
  <div>
        <img alt="" src="Elmhurst_University_logo.png" height="100"/><table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnHome" runat="server" CssClass="btn btn-primary" Height="41px" OnClick="btnHome_Click" Text="HOME" Width="95px" style="margin-left: 980px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </div>
        <h1>Reports</h1>
      

         
        <asp:GridView ID="deasutReportGV" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="deasutReport" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="deasutReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [deasutReport]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="samjamReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="samjamReport" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <asp:SqlDataSource ID="samjamReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [samjamReport]"></asp:SqlDataSource>
        <asp:GridView ID="tomjefReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="tomjefReport" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="tomjefReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [tomjefReport]"></asp:SqlDataSource>
        <asp:GridView ID="camjefReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="camjefReport" Visible="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
        <asp:SqlDataSource ID="camjefReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [camjefReport]"></asp:SqlDataSource>
        <asp:GridView ID="johsmiReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="johsmiReport" Visible="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="johsmiReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [johsmiReport]"></asp:SqlDataSource>
        <br />
        <br />
        &nbsp;<asp:GridView ID="melsmiReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="melsmiReport" Visible="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
        <asp:SqlDataSource ID="melsmiReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [melsmiReport]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="camwalReportGV" runat="server" AutoGenerateColumns="False" DataKeyNames="reportDate" DataSourceID="camwalReport" Visible="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="camwalReport" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [camwalReport]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="deanReportGV" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="reportDate" DataSourceID="hensmiReportGV" GridLines="Horizontal" Visible="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
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
                <asp:BoundField DataField="facultyID" HeaderText="facultyID" SortExpression="facultyID" />
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="hensmiReportGV" runat="server" ConnectionString="<%$ ConnectionStrings:far_testingConnectionString3 %>" SelectCommand="SELECT * FROM [Reports]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="btnDownloadSamjam" runat="server" OnClick="btnDownloadSamjam_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadDeasut" runat="server" OnClick="btnDownloadDeasut_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadTomjef" runat="server" OnClick="btnDownloadTomjef_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadCamjef" runat="server" OnClick="btnDownloadCamjef_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadHensmi" runat="server" OnClick="btnDownloadHensmi_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadJohsmi" runat="server" OnClick="btnDownloadJohsmi_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadMelsmi" runat="server" OnClick="btnDownloadMelsmi_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <asp:Button ID="btnDownloadCamwal" runat="server" OnClick="btnDownloadCamwal_Click" Text="Download" Height="41px" Width="112px" />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
