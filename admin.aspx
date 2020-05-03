<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="TemizlikSirketi2.admin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
     <br />
    <p>sa<br /> 
    <br />

        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
            <ItemTemplate>
                <table style="padding: inherit; margin: auto; width: 100%; border: thin solid #460046; background-color: #EFBFFF; line-height: inherit;">
                    <tr>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("SirketAdi") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("SirketSifre") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("SirketTel") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("SirketMail") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("adres1") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("SirketSorumlu") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("SirketSorumluTel") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("adres2") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("adres3") %>'></asp:Label>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                            <a href="admin.aspx?SirketID=<%#Eval("SirketID")%>&islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/fotolar/delete.png" Width="30px" /> </a>
                        </td>
                        <td rowspan="10" style="border-width: 0px thin thin 0px; border-style: dotted; border-color: #CC33FF; padding: 25px; margin: 25px; table-layout: fixed; empty-cells: show;">
                           <a href="adminDuzenle.aspx?SirketID=<%#Eval("SirketID")%>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/fotolar/hiclipart.com.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </p>

  
</asp:Content>
