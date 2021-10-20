<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoctorReg.aspx.cs" Inherits="Project58936.DoctorReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 179px;
        }
        .auto-style3 {
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
          
           
            &nbsp;&nbsp;
          
           
            <asp:Panel ID="Panel1" runat="server" Height="541px" Width="61%" align="center" BackColor="#FFFFCC">
                &nbsp;<br />
                 <table style="padding:5px 5px 5px 5px; height: 501px; width: 584px; align-content:start">
                <tr>
                <th colspan="3"><asp:Label ID="Label1" runat="server" Text="DOCTOR REGISTRARTION" Font-Bold="True" Font-Size="X-Large"></asp:Label></th>
                </tr>
                <tr>    
                <td class="auto-style2"><asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Name:"></asp:Label></td>
                <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Mobile No:"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Mobile no" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Mail Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Please Enter Mail Id" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter correct mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Select Category:"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="176px" style="margin-left: 28px" >
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please Select category" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Fees:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Fees" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Enter Password:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Enter same password" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="align-content:center" colspan="3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Register" Width="105px" Font-Bold="True" Font-Size="Medium" OnClick="Button1_Click" />
                   
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Cancel" Width="105px" />
                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                    </td>
                </tr> 
                     </table>
            </asp:Panel>
                
            <br />
        </div>
    </form>
</body>
</html>