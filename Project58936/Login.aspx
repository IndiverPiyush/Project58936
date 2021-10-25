
<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project58936.Login" %>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/LoginLayout.Master" AutoEventWireup="true" CodeBehind="LoginLayout.aspx.cs" Inherits="Project58936.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hi from layout wiht master page...</title>
    <style>
        .auto-style1 {
            height: 80px;
            
        }
        .auto-style2 {
            position : relative;
                top: 0px;
                height: 50px;
                left: -10px;
        }
        .auto-style3 {
            position : relative;
                top: 0px;
                height: 50px;
                left: 90px;
        }
        #Panel1{
            position : relative;
            top: 250px;
        }
        .div1{
            position : relative;
            top: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="div1" align ="center">
        <asp:Panel ID="Panel1" runat="server" BackColor="#F7F6F2" Height="350px" Width="600px" BorderStyle="Outset">
            <table align="Center">
                <tr>
                    <td class="auto-style1" colspan="2">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text=" Appointment Management System Login"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Login ID :  " Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Login ID" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Password : " Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="2">
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="login" Text="Patient" />
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="login" Text="Admin" />
                    </td>
                </tr>
                <tr>
                    <td align="Center" class="auto-style2" colspan="2">
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Label" Font-Italic="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label4" runat="server" Font-Size="Medium" Text="New user ?" Font-Bold="True"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/UserRegistration.aspx" Font-Bold="True">Sign Up</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </asp:Panel>
            </div>
</asp:Content>
