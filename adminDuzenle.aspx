<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminDuzenle.aspx.cs" Inherits="TemizlikSirketi2.adminDuzenle" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <table class="nav-justified" style="margin: auto; padding: inherit; border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #800080; table-layout: fixed">
        <tr>
            <td>Sirket Adi</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sirket Sifre</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sirket Telefon</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sirket Mail</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres1</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sirket Sorumlu</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Sirket Sorumlu Telefon</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres 2 </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Adres 3</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server" Width="679px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="5" rowspan="5">
                <asp:Button ID="Button1" runat="server" Text="Kaydet" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />



</asp:Content>
