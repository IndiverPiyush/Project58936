<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectDoctor.aspx.cs" Inherits="Project58936.SelectDoctor" %>--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="SelectDoctor.aspx.cs" Inherits="Project58936.SelectDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Hi from layout wiht master page...</title>
    <style>
        .grid1{
            position : relative;
            top : 100px;
            left : 380px;
        }
        #Label1{
            position : relative;
            left : 550px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class ="grid1"><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="SELECT DOCTOR" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            <br />
            <hr />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" CellPadding="30" DataKeyNames="DOCTOR_NO" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellSpacing="15" Width="978px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="DOCTOR_NO" HeaderText="DOCTOR_NO" InsertVisible="False" ReadOnly="True" SortExpression="DOCTOR_NO" />
                    <asp:BoundField DataField="DOCTOR_NAME" HeaderText="DOCTOR_NAME" SortExpression="DOCTOR_NAME" />
                    <asp:BoundField DataField="DOCTOR_MOBILE" HeaderText="DOCTOR_MOBILE" SortExpression="DOCTOR_MOBILE" />
                    <asp:BoundField DataField="DOCTOR_EMAIL" HeaderText="DOCTOR_EMAIL" SortExpression="DOCTOR_EMAIL" />
                    <asp:BoundField DataField="DOCTOR_CATEGORY_NO" HeaderText="DOCTOR_CATEGORY_NO" SortExpression="DOCTOR_CATEGORY_NO" />
                    <asp:BoundField DataField="DOCTR_FEES" HeaderText="DOCTR_FEES" SortExpression="DOCTR_FEES" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
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
</asp:Content>