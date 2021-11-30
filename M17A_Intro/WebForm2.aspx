<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="M17A_Intro.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Login</h2>
    <!--Isto é um comentário-->
    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
    <asp:TextBox TextMode="Email" ID="tbEmail" runat="server"></asp:TextBox>
    <br /><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox TextMode="Password" ID="tbPassword" runat="server"></asp:TextBox>
    <br /><asp:Button OnClick="Button1_Click" CssClass="btn btn-danger" ID="Button1" runat="server" Text="Login" />
</asp:Content>
