<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="tp3.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Index -<br />
            <br />
            || Registros Contables ||<br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaRegistros.aspx">Cargar registro</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/modificarRegistros.aspx">Modificar registros</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/bajaRegistros.aspx">Eliminar registros</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/consultaRegistros.aspx">Consultar regisdtros</asp:HyperLink>
            <br />
            <br />
            <br />
            || Cuentas ||<br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server">HyperLink</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server">HyperLink</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink7" runat="server">HyperLink</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink8" runat="server">HyperLink</asp:HyperLink>
        </div>
    </form>
</body>
</html>
