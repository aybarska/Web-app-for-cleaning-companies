<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="yonetici.aspx.cs" Inherits="TemizlikSirketi2.yonetici" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <br />
    <br />

    <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
        <div class="card-header">Yonetici </div>
        <div class="card-body">
            <br />
            <h4 class="card-title">Giris Yap: </h4>
            <br />
            <p class="card-text">Kullanici Adi:</p>
            <p class="card-text">Sifre:</p>
            <br />
            <p class="card-text"><a href="/admin" class="btn btn-primary btn-success">Giris Yap &raquo;</a></p>
            <br />
        </div>
    </div>

</asp:Content>
