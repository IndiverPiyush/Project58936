<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectDoctor.aspx.cs" Inherits="Project58936.SelectDoctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Choose Doctor:
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="4" DataKeyNames="DOCTOR_NO" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DOCTOR_NO" HeaderText="DOCTOR_NO" InsertVisible="False" ReadOnly="True" SortExpression="DOCTOR_NO" />
                    <asp:BoundField DataField="DOCTOR_NAME" HeaderText="DOCTOR_NAME" SortExpression="DOCTOR_NAME" />
                    <asp:BoundField DataField="DOCTOR_MOBILE" HeaderText="DOCTOR_MOBILE" SortExpression="DOCTOR_MOBILE" />
                    <asp:BoundField DataField="DOCTOR_EMAIL" HeaderText="DOCTOR_EMAIL" SortExpression="DOCTOR_EMAIL" />
                    <asp:BoundField DataField="DOCTOR_CATEGORY_NO" HeaderText="DOCTOR_CATEGORY_NO" SortExpression="DOCTOR_CATEGORY_NO" />
                    <asp:BoundField DataField="DOCTR_FEES" HeaderText="DOCTR_FEES" SortExpression="DOCTR_FEES" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DAMSConnectionString %>" SelectCommand="SELECT [DOCTOR_NO], [DOCTOR_NAME], [DOCTOR_MOBILE], [DOCTOR_EMAIL], [DOCTOR_CATEGORY_NO], [DOCTR_FEES] FROM [DOCTOR] WHERE ([DOCTOR_CATEGORY_NO] = @DOCTOR_CATEGORY_NO)" ProviderName="<%$ ConnectionStrings:DAMSConnectionString.ProviderName %>">
                <SelectParameters>
                    <asp:SessionParameter Name="DOCTOR_CATEGORY_NO" SessionField="category" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
