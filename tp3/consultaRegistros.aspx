<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaRegistros.aspx.cs" Inherits="tp3.consultaRegistros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consulta de registros contables:<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el id del registro: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT r.id as id, r.monto as monto, r.tipo as tipo, c.descripcion as descripcion FROM registros_contables AS r INNER JOIN cuentas AS c ON r.idCuenta = c.id WHERE (r.id = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
