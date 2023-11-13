<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificarRegistros.aspx.cs" Inherits="tp3.modificarRegistros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Modificar un registro contable -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Id del registro a modificar: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Monto: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Tipo: "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Debe</asp:ListItem>
                <asp:ListItem Value="1">Haber</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Cuenta: "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCuentas" DataTextField="descripcion" DataValueField="id">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Modificar" Width="78px" />
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSourceCuentas" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT [descripcion] FROM [cuentas] WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSourceModificacion" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" SelectCommand="SELECT [monto], [tipo], [idCuenta] FROM [registros_contables] WHERE ([id] = @id)" UpdateCommand="UPDATE registros_contables SET monto = @monto, tipo = @tipo, idCuenta = @idCuenta WHERE (id = @id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="monto" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="tipo" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="idCuenta" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
