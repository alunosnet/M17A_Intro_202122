<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="pagina_segura.aspx.cs" Inherits="M17A_Intro.pagina_segura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Área do Admin</h2>
    <% Response.Write(Session["email"].ToString()); %>
<asp:Button OnClick="btlogout_Click" ID="btlogout" runat="server" Text="Terminar sessão" />
</asp:Content>
