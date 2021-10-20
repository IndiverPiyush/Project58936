<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoryRegistration.aspx.cs" Inherits="Project58936.WebForm1" %>



<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>

<style type="text/css">
.auto-style1 {
height: 60px;
}
.auto-style2 {
height: 60px;
}
.auto-style3 {
height: 30px;
}
.auto-style4 {
height: 30px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<br /><br /><br /><br />
<div align="center">
<asp:Panel ID="Panel1" runat="server" Height="411px" Width="696px" BackColor="#FFFFCC">



<br /><br /><br />
<table align="center">
<tr>
<td colspan="3" align="center" class="auto-style1">



<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="CATEGORY REGISTRATION"></asp:Label>



</td>
</tr>
<caption>
<br />
<tr>
<td class="auto-style3">
<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Category Name"></asp:Label>
</td>
<td class="auto-style3">
<asp:Label ID="Label4" runat="server" Text=":"></asp:Label>
</td>
<td class="auto-style3">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Category Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="auto-style3">
<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Time Duration"></asp:Label>
</td>
<td class="auto-style3">
<asp:Label ID="Label5" runat="server" Text=":"></asp:Label>
</td>
<td class="auto-style3">
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Time Duration" ForeColor="#FF3300"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td class="auto-style4">
<asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Max Appointment"></asp:Label>
</td>
<td class="auto-style4">
<asp:Label ID="Label6" runat="server" Text=":"></asp:Label>
</td>
<td class="auto-style4">
<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please Enter Max Appointment" ForeColor="#FF3300"></asp:RequiredFieldValidator>
</td>
</tr>
<tr>
<td align="center" class="auto-style2" colspan="3">
<asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Register" />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
</td>
</tr>
<tr>
<td align="center" colspan="3">
<asp:Label ID="Label8" runat="server"></asp:Label>
</td>
</tr>
</caption>
</table>
</asp:Panel>



</div>

</form>
</body>
</html>