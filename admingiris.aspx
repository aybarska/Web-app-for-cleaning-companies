<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admingiris.aspx.cs" Inherits="TemizlikSirketi2.admingiris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">Lutfen giris yapin.</h1>
    <br />
    <p>Kullanici Adi:</p>
    <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
    <br />
    <br />
    <p>Sifre:</p>
    <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <br />



    <asp:Button ID="Button1" runat="server" Text="Giris Yap" class="btn btn-primary" OnClick="Button1_Click" />
    <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
    <asp:Label ID="lblBilgi" runat="server" Text="deneme"></asp:Label>
    <br />
    <br />
    <br />
    <br />



</asp:Content>
