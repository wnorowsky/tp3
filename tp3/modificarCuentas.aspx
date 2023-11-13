<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificarCuentas.aspx.cs" Inherits="tp3.modificarCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Modificar una cuenta -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Inserte el id de la cuenta a modificar: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Nuevo nombre de cuenta: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT descripcion FROM cuentas WHERE (id = @id)" UpdateCommand="UPDATE cuentas SET descripcion = @descripcion where (id = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="descripcion" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="descripcion" PropertyName="Text" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
