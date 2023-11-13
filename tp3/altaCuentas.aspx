<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaCuentas.aspx.cs" Inherits="tp3.altaCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registrar una nueva cuenta -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre de la cuenta: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" InsertCommand="INSERT INTO cuentas(descripcion) VALUES (@descripcion)" SelectCommand="select * from cuentas">
                <InsertParameters>
                    <asp:Parameter Name="descripcion" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
