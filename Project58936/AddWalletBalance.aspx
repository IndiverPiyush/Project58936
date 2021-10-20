<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddWalletBalanace.aspx.cs" Inherits="Project58936.AddWalletBalanace" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
</head>
<body>
<form id="form1" runat="server">
<div align="center">
<asp:Panel ID="Panel1" runat="server" Height="376px" Width="864px" BackColor="#CCFFCC" BorderColor="#00CC00">
<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Overline="True" Font-Size="XX-Large" Font-Underline="True" Text="Update Wallet"></asp:Label>
<br />
<br />
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;
<asp:Label ID="Label1" runat="server" Text="Enter Amount :"></asp:Label>
&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Width="279px"></asp:TextBox>
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Wallet" />
</asp:Panel>
</div>
</form>
</body>
</html>