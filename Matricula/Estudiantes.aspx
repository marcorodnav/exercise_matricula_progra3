<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Estudiantes.aspx.cs" Inherits="Matricula.Estudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CODIGO" DataSourceID="SqlEstudiantes" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="133px" Width="377px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" ReadOnly="True" SortExpression="CODIGO" />
        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
        <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" SortExpression="APELLIDO" />
        <asp:BoundField DataField="EDAD" HeaderText="EDAD" SortExpression="EDAD" />
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
<asp:SqlDataSource ID="SqlEstudiantes" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" SelectCommand="SELECT * FROM [ESTUDIANTE]"></asp:SqlDataSource>
</asp:Content>
