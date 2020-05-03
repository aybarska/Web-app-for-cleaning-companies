<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="giris.aspx.cs" Inherits="TemizlikSirketi2.giris" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    
    
    <div class="jumbotron">


         <div class="col-sm-9">
                <form>
                    <h2 align="left">Kayit:</h2>
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="validationServer01">Sirket Adi:</label>
                            <input type="text" class="form-control" id="SirketAdi" placeholder="Sirket Adi" value="" required>
                            <div class="valid-feedback">
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="validationServer02">Sifre:</label>
                            <input type="password" class="form-control is-valid" id="SirketSifre" placeholder="Sifre" value="" required>
                            <div class="valid-feedback">
                                Lutfen guclu bir sifre olusturun.
                            </div>
                        </div>

                    </div>
                    <div class="form-row">
                        <div class="col-md-4 mb-3">
                            <label for="validationServer03">Sirket Telefon:</label>
                            <input type="text" class="form-control" id="SirketTel" placeholder="0224-111-2222" required>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="validationServerUsername">E-mail:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="SirketMail" placeholder="email@xyz.com" aria-describedby="inputGroupPrepend3" required>
                            </div>
                        </div>

                        <div class="col-md-10 mb-6">
                            <label for="validationServer04">Adres</label>
                            <input type="text" class="form-control is-valid" id="adres1" placeholder="Sirket adresi." required>
                            <div class="valid-feedback">
                                Birden fazla lokasyonunuz varsa formun altindaki alanlara ekleyebilirsiniz.
                            </div>
                        </div>



                    </div>

                    <div class="form-group">
                        <br>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationServer01">Yetkili:</label>
                                <input type="text" class="form-control" id="SirketSorumlu" placeholder="Iletisim kurulacak kisi." value="" required>
                                <div class="valid-feedback">
                                </div>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationServer02">Telefon:</label>
                                <input type="text" class="form-control" id="SirketSorumluTel" placeholder="Iletisim Telefonu." value="" required>
                            </div>

                        </div>
                        <div class="col-md-4 mb-3">
                            <br>
                            <button class="btn btn-primary" type="submit" align="center">Formu Gonder</button>
                        </div>
                        <div class="form-group">

                            <div class="col-md-10 mb-6">

                                <label for="validationServer04">
                                    <br>
                                    Adres Diger(Varsa): </label>
                                <input type="text" class="form-control" id="adres2" placeholder="Sirket adresi." required>
                            </div>
                            <div class="col-md-10 mb-6">
                                <label for="validationServer04">
                                    <br>
                                    Adres Diger(Varsa): </label>
                                <input type="text" class="form-control" id="adres3" placeholder="Sirket adresi.." required>
                            </div>
                        </div>
                </form>

            </div>
   
      </div>
   




</asp:Content>
