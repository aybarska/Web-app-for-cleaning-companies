<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="taleplerim.aspx.cs" Inherits="TemizlikSirketi2.taleplerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="height: 502px">
        <br />

        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />


        <asp:DataList ID="DataList1" runat="server" Width="1358px">
            <ItemTemplate>
                <table style="padding: inherit; margin: auto; width: 100%; border: thin solid #460046; line-height: inherit;">


                    <tr>
                        <th style="background-color: #333333">Temizlik Baslangic Tarihi</th>
                        <th style="background-color: #333333">Bitis Tarihi</th>
                        <th style="background-color: #333333">Calisan Sayisi</th>
                        <th style="background-color: #333333">Adres</th>
                        <th style="background-color: #333333">Sil</th>
                    </tr>
                    <tr>

                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TalepBasTarih") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TalepBitTarih") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TalepCalisanSay") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TalepAdres") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <a href="taleplerim.aspx?TalepID=<%#Eval("TalepID")%>&islem=sil">
                                <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/fotolar/delete.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>


        <br />
    </div>
    <div align="center" style="height: 47px">


        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Talep Olustur." class="btn btn-info" Width="163px" />


    </div>

</asp:Content>
