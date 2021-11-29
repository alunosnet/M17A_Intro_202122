<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="M17A_Intro.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Num"></asp:Label>
            <asp:TextBox ID="tbnum1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Num"></asp:Label>
            <asp:TextBox ID="tbNum2" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbResultado" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
            <br />
        </div>
    </form>
</body>
</html>
