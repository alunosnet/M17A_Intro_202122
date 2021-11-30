<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M17A_Intro.notas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    nprocesso:
                    <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor:
                    <asp:TextBox Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
                    disciplina:
                    <asp:TextBox Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nprocesso:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("nprocesso") %>' DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso"></asp:DropDownList>
                    <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [alunos] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    valor:
                    <asp:TextBox Text='<%# Bind("valor") %>' runat="server" ID="valorTextBox" /><br />
                    disciplina:
                    <asp:TextBox Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    nprocesso:
                    <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    data_nota:
                    <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                    valor:
                    <asp:Label Text='<%# Bind("valor") %>' runat="server" ID="valorLabel" /><br />
                    disciplina:
                    <asp:Label Text='<%# Bind("disciplina") %>' runat="server" ID="disciplinaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="insert into notas(nprocesso,data_nota,valor,disciplina)
values (@nprocesso,@data_nota,@valor,@disciplina)"
                SelectCommand="SELECT * FROM [notas]">
                <InsertParameters>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="data_nota"></asp:Parameter>
                    <asp:Parameter Name="valor"></asp:Parameter>
                    <asp:Parameter Name="disciplina"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
