<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create_Report.aspx.cs" Inherits="CS475_FAR.Create_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            height: 48px;
            width: 131px;
        }
        .auto-style5 {
            height: 72px;
            width: 131px;
        }
        .auto-style6 {
            height: 72px;
            width: 988px;
        }
        .auto-style7 {
            width: 131px;
        }
        .auto-style8 {
            height: 24px;
            width: 131px;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            height: 24px;
            width: 982px;
        }
        .auto-style12 {
            height: 48px;
            width: 982px;
        }
        .auto-style13 {
            width: 982px;
        }
        .auto-style14 {
            height: 72px;
            width: 982px;
        }
        .auto-style16 {
            margin-left: 2px;
        }
        .auto-style17 {
            height: 24px;
            width: 180px;
        }
        .auto-style18 {
            height: 72px;
            width: 180px;
        }
        .auto-style19 {
            height: 48px;
            width: 180px;
        }
        .auto-style20 {
            width: 180px;
        }
        .auto-style21 {
            width: 100%;
            height: 345px;
        }
        .auto-style22 {
            width: 91px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style16"></asp:TextBox>
                    </td>
                    <td class="auto-style17">
                        &nbsp;
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style14">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style18">
                        &nbsp;</td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Department Name: "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style19">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style20">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td class="auto-style20">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </p>
        <table class="auto-style21">
            <tr>
                <td class="auto-style22">
                        <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Height="152px" Width="413px" TextMode="MultiLine"></asp:TextBox>


                    

                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
