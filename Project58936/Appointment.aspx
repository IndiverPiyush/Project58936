<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Appointment.aspx.cs" Inherits="Project58936.Appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 384px;
            height: 23px;
        }
        .auto-style2 {
            width: 1088px;
            height: 23px;
        }
        .auto-style3 {
            width: 1081px;
            height: 366px;
        }
        .auto-style4 {
            width: 258px;
        }
        .auto-style5 {
            height: 37px;
        }
        .auto-style6 {
            width: 258px;
            height: 37px;
        }
        .auto-style7 {
            height: 38px;
        }
        .auto-style8 {
            width: 258px;
            height: 38px;
        }
        .auto-style9 {
            height: 30px;
        }
        .auto-style10 {
            width: 258px;
            height: 30px;
        }
    </style>
</head>
<body style="text-align: center;">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Request an Appointment"></asp:Label>
            <br />
        </div>
        <table>
  <tr>
    <td class="auto-style1">
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="351px" ShowGridLines="True" Width="366px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
      </td>
    <td class="auto-style2">
        <table class="auto-style3">
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="50px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="50px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="150px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="50px" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Width="150px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td class="auto-style5"></td>
                <td class="auto-style5">
        <asp:DropDownList ID="DropDownList4" runat="server" Height="50px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="150px">
            <asp:ListItem>Select</asp:ListItem>
        </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style4"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style4"></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
    </td>
  </tr>
</table>
        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Book Appointment" Width="164px" />
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
    </form>
</body>
</html>
