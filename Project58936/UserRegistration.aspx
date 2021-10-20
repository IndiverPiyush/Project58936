<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Project58936.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 509px;
            height: 447px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel1" runat="server" Height="499px" Width="825px" BackColor="#CCFFCC" BorderColor="#00CC00" BorderStyle="Ridge">
            <table align="center" class="auto-style2" border="0">

               <tr> 
                    <td colspan="3" align="center"><asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" Text="  USER      REGISTRATION"></asp:Label>
</td>   
                </tr>

                <tr>
                    <td> <asp:Label ID="Label1" runat="server" Text="     NAME"></asp:Label></td>
                    <td>:</td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="178px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="177px" TextMode="Email"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox3" runat="server" Width="177px" TextMode="Password"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" Width="182px" TextMode="Date"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter DOB" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="MOBILE NO."></asp:Label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox5" runat="server" Width="183px" MaxLength="10" TextMode="Phone"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter 10 digit Number" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="WALLET"></asp:Label></td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td><asp:TextBox ID="TextBox6" runat="server" Width="182px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Wallet Amount" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" />
                    </td>
                </tr>
                  <tr>
                    <td colspan="3" align="center">
                        
                        <asp:Label ID="Label8" runat="server"></asp:Label>
                        &nbsp;</td>
                </tr>

                </table>
        </asp:Panel>
            </div>
    </form>
</body>
</html>
