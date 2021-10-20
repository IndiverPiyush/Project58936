<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Review1.aspx.cs" Inherits="Project58936.Review1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

  <style type="text/css">
        * {
            box-sizing: border-box;
            /* outline:1px solid ;*/
        }

        @media (min-width:600px) {
            .content {
                max-width: 1000px;
            }

            .wrapper-1 {
                height: initial;
                max-width: 620px;
                margin: 0 auto;
                margin-top: 50px;
                box-shadow: 4px 8px 40px 8px rgba(88, 146, 255, 0.2);
            }
            .div1{
                position : relative;
                left : 20px;
            }
            .p1{
                position : relative;
                left : 550px;
            }
        }
    </style>
</head>
<body>
    
        <form id="form1" runat="server">
            <div  class ="div1" align="center">
                <asp:Panel ID="Panel1" runat="server" BackColor="#FFD988" Height="325px" CssClass="auto-style1" Width="690px">
                    <br />
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Appointment Details : "></asp:Label>
                    <br />
                    <table style="width:100%;" style="text-align: center;">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label2" runat="server" Text="Appointment No. :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" Text="Patient Name :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label6" runat="server" Text="Appointment Date :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label8" runat="server" Text="Appointment Time :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label10" runat="server" Text="Doctor Name :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">Category Name :</td>
                            <td>
                                <asp:Label ID="Label13" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label14" runat="server" Text="Fees :"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </div>
            <p>
                &nbsp;
            </p>
            <p class ="p1">
               
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text="Thank You for using our Web Service !!"></asp:Label>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
            </p>
        </form>
    
</body>
</html>
