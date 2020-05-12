<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="musteri.aspx.cs" Inherits="TemizlikSirketi2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">







    <br />
    <br />
    <div class='table-responsive'>
        <table>
            <tbody>
                <tr class="table-active">
                    <td>
                        <div align="center">
                            <h2>XYZ Temizlik.</h2>
                            <h3>Musterimiz iseniz giris yapin ya da kayit talebi olusturun.</h3>
                            <p>Talebiniz sonrasi musteri temsilcilerimiz size ulasacak.</p>
                            <br />
                        </div>
                    </td>
                    <br />
                    <td>
                        <div class="container">
                            <br />
                            <div class="alert alert-dismissible alert-info">
                                <h2>Giris:</h2>
                                <div class="form-group">
                                    <label for="formGroupExampleInput">Sirket Adi  </label>
                                    <input id="formGroupExampleInput" class="form-control" type="text" placeholder="Sirket Adi" />
                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Sifre</label>
                                    <input id="exampleInputPassword1" class="form-control" type="password" placeholder="Sifre" />
                                </div>
                                <div class="form-check">
                                    <input id="exampleCheck1" class="form-check-input" type="checkbox" />
                                    <label class="form-check-label" for="exampleCheck1">Bilgilerimi hatirla.</label>
                                </div>
                                <br />
                                <button class="btn btn-primary btn-lg btn-block" type="submit">Giris Yap</button>
                                <br />
                            </div
                        </div>

                    </td>
                </tr>
                <tr class="table-danger">
                    <td>
                        <div class="container">
                            <br />
                            <br />
                            <h2>Kayit:</h2>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="validationServer01">Sirket Adi:</label>
                                    <asp:TextBox ID="SirketAdi" runat="server" class="form-control" OnTextChanged="TextBox1_TextChanged" Width="1301px"></asp:TextBox>
                                </div>
                                &nbsp;
                                <div class="col-md-4 mb-3">
                                    <label for="validationServer02">Sifre:</label>
                                    <asp:TextBox ID="SirketSifre" runat="server" class="form-control is-valid" TextMode="Password"></asp:TextBox>

                                    <div class="valid-feedback">
                                        Lutfen guclu bir sifre olusturun.
                                    </div>
                                </div>

                            </div>
                            <div class="form-row">
                                <div class="col-md-4 mb-3">
                                    <label for="validationServer03">Sirket Telefon:&nbsp;</label>

                                    <asp:TextBox ID="SirketTel" runat="server" class="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationServerUsername">E-mail:</label>
                                    &nbsp;<div class="input-group">

                                        <asp:TextBox ID="SirketMail" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="col-md-10 mb-6">
                                    <label for="validationServer04">Adres</label>
                                    &nbsp;
                        <asp:TextBox ID="adres1" runat="server" class="form-control is-valid" TextMode="MultiLine"></asp:TextBox>
                                    <div class="valid-feedback">
                                        Birden fazla lokasyonunuz varsa formun altindaki alanlara ekleyebilirsiniz.
                                    </div>
                                </div>



                            </div>

                            <div class="form-group">
                                <br>
                                <div class="form-row">
                                    <div class="col-md-4 mb-3">
                                        <label for="validationServer01">Yetkili:</label>
                                        &nbsp;
                            <asp:TextBox ID="SirketSorumlu" runat="server" class="form-control"></asp:TextBox>
                                        <div class="valid-feedback">
                                        </div>
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <label for="validationServer02">Telefon:</label>
                                        &nbsp;
                            <asp:TextBox ID="SirketSorumluTel" runat="server" class="form-control"></asp:TextBox>
                                    </div>

                                </div>
                                <div class="col-md-4 mb-3">
                                    <br>

                                    <asp:Button ID="gonder" runat="server" Text="Formu Gonder" class="btn btn-primary btn-lg btn-block" OnClick="gonder_Click" />

                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-md-10 mb-6">

                                    <label for="validationServer04">
                                        <br>
                                        Adres Diger(Varsa):
                                    </label>
                                    <asp:TextBox ID="adres2" runat="server" class="form-control" TextMode="MultiLine">Yok</asp:TextBox>

                                </div>
                                <div class="col-md-10 mb-6">
                                    <label for="validationServer04">
                                        <br>
                                        Adres Diger(Varsa):
                                    </label>
                                    <asp:TextBox ID="adres3" runat="server" class="form-control" TextMode="MultiLine">Yok</asp:TextBox>
                                    <br />
                                    <br />
                                </div>
                            </div>
                        </div>
                </tr>
            </tbody>
        </table>
    </div>














































</asp:Content>
