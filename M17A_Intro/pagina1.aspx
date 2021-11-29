<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina1.aspx.cs" Inherits="M17A_Intro.pagina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Página 1</h1>
            Nome:<asp:TextBox ID="tbNome" runat="server" />
            <asp:Button id="bt" Text="Enviar" runat="server" OnClick="bt_Click" />
        </div>
    </form>
</body>
</html>
