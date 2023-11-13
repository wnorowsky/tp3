<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bajaRegistros.aspx.cs" Inherits="tp3.bajaRegistros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Eliminar un registro contable -<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Insertar el id del registro a borrar: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Eliminar" />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Retornar</asp:HyperLink>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tp3ConnectionString %>" DeleteCommand="DELETE FROM registros_contables WHERE (id = @id)" SelectCommand="SELECT * FROM [cuentas]">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="id" PropertyName="Text" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
