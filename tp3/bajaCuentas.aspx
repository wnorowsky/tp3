<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaCuentas.aspx.cs" Inherits="tp3.bajaCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p>
            Eliminar una cuenta -</p>
        <asp:Label ID="Label1" runat="server" Text="Nombre de la cuenta: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" DeleteCommand="DELETE FROM cuentas WHERE (descripcion = @descripcion)" SelectCommand="select * from cuentas">
                <DeleteParameters>
                    <asp:Parameter Name="descripcion" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
