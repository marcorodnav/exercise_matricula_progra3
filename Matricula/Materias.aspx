<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="Matricula.Materias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CODIGO_MATERIA" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="370px">
    <Columns>
        <asp:BoundField DataField="CODIGO_MATERIA" HeaderText="CODIGO_MATERIA" ReadOnly="True" SortExpression="CODIGO_MATERIA" />
        <asp:BoundField DataField="CODIGO" HeaderText="CODIGO" SortExpression="CODIGO" />
        <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UPIConnectionString %>" DeleteCommand="DELETE FROM [MATERIA] WHERE [CODIGO_MATERIA] = @CODIGO_MATERIA" InsertCommand="INSERT INTO [MATERIA] ([CODIGO], [NOMBRE]) VALUES (@CODIGO, @NOMBRE)" SelectCommand="SELECT [CODIGO_MATERIA], [CODIGO], [NOMBRE] FROM [MATERIA]" UpdateCommand="UPDATE [MATERIA] SET [CODIGO] = @CODIGO, [NOMBRE] = @NOMBRE WHERE [CODIGO_MATERIA] = @CODIGO_MATERIA">
    <DeleteParameters>
        <asp:Parameter Name="CODIGO_MATERIA" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CODIGO" Type="Int32" />
        <asp:Parameter Name="NOMBRE" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CODIGO" Type="Int32" />
        <asp:Parameter Name="NOMBRE" Type="String" />
        <asp:Parameter Name="CODIGO_MATERIA" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
