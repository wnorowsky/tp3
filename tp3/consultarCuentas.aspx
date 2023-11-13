<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultarCuentas.aspx.cs" Inherits="tp3.consultarCuentas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Consultar cuentas -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el nombre de la cuenta: "></asp:Label>
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
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT [id] FROM [cuentas] WHERE ([descripcion] = @descripcion)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="descripcion" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
