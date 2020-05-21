<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="talep.aspx.cs" Inherits="TemizlikSirketi2.talep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style="width: 100%">
        <tr>
            <td>


                <div class="text-center text-warning" style="height: 50px;">
                    <br />
                    <br />
                    <br />
                    <span class="label label-default">Temizlik baslangic tarihi;
                    </span>
                    <div align="center">
                        <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </div>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Seciniz" OnClick="Button1_Click" />
                </div>
                <div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
                <div class="text-center text-warning" style="height: 50px;">
                    <span class="label label-default">Temizlik bitis tarihi;
                    </span>
                    <div align="center">
                        <asp:Calendar ID="Calendar2" runat="server" Visible="False" OnSelectionChanged="Calendar2_SelectionChanged1" OnDayRender="Calendar2_DayRender" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>
                    </div>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Seciniz" OnClick="Button2_Click" />
                </div>
                <div align="center">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Taleplerim." class="btn btn-info" Width="163px" />

                </div>



            </td>
            <td>


                <div class="text-center text-warning" style="height: 60px;" align="center">

                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Italic="True" Font-Size="Large"></asp:Label>

                </div>
                <div class="text-center text-warning" style="height: 60px;" align="center">
                    <p style="color: #6666FF">Personel Sayisi:  </p>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="71px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem Selected="True">2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem Value="4">4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <br />
                <div align="center" class="text-center text-warning" style="height: 60px;">
                    <p style="color: #6666FF">Adres:  </p>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>

                </div>
                <br />
                <br />
                <div align="center" class="text-center text-warning" style="height: 60px;">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />

                    <asp:Button ID="Button3" runat="server" Text="Talep Olustur." class="btn btn-primary" Width="163px" OnClick="Button3_Click" />

                    <br />
                    <br />



                </div>

            </td>
        </tr>
    </table>


</asp:Content>
