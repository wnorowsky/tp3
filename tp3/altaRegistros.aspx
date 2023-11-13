<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaRegistros.aspx.cs" Inherits="tp3.altaRegistros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Registrar un nuevo registro contable -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Ingrese el monto: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Tipo: "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="0">Debe</asp:ListItem>
                <asp:ListItem Value="1">Haber</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Cuenta: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCuentas" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSourceCuentas" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT * FROM [cuentas]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceAlta" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" InsertCommand="INSERT INTO registros_contables(monto, tipo, idCuenta) VALUES (@monto, @tipo, @cuenta)" SelectCommand="SELECT * FROM [cuentas]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="tipo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="cuenta" PropertyName="SelectedValue" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
