﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="filtruj_kandydat.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <asp:GridView ID="GV_kandydat" runat="server" Width="1204px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="GV_DataSql" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
    <Columns>
        <asp:BoundField DataField="Imie_kandydata" HeaderText="Imie_kandydata" SortExpression="Imie_kandydata" />
        <asp:BoundField DataField="Nazwisko_kandydata" HeaderText="Nazwisko_kandydata" SortExpression="Nazwisko_kandydata" />
        <asp:BoundField DataField="Adres_kandydata" HeaderText="Adres_kandydata" SortExpression="Adres_kandydata" />
        <asp:BoundField DataField="Telefon_Kandydata" HeaderText="Telefon_Kandydata" SortExpression="Telefon_Kandydata" />
        <asp:BoundField DataField="Data_urodzenia" HeaderText="Data_urodzenia" SortExpression="Data_urodzenia" ReadOnly="True" />
        <asp:BoundField DataField="Wyksztalcenie_kandydata" HeaderText="Wyksztalcenie_kandydata" SortExpression="Wyksztalcenie_kandydata" />
        <asp:BoundField DataField="Data_aplikacji" HeaderText="Data_aplikacji" SortExpression="Data_aplikacji" ReadOnly="True" />
        <asp:BoundField DataField="Nazwa_stanowiska" HeaderText="Nazwa_stanowiska" SortExpression="Nazwa_stanowiska" />
    </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Data_urodzenia_od"></asp:Label>
&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
    <br>
    <asp:Label ID="Label2" runat="server" Text="Obywatelstwo"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Wyksztalcenie"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
    <br />
<asp:Button ID="wyszukaj" runat="server" OnClick="Button1_Click" Text="wyszukaj" Width="269px" />
    <br />
<asp:SqlDataSource ID="GV_DataSql" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" SelectCommand="-- Znajduje kandydatów spełniających wymagania formalne danej oferty
SELECT Imie_kandydata, Nazwisko_kandydata, Adres_kandydata, Telefon_Kandydata, CONVERT (varchar(10),Data_urodzenia,23) as Data_urodzenia, Wyksztalcenie_kandydata, CONVERT (varchar(10),Data_aplikacji,23) as Data_aplikacji, Nazwa_stanowiska
FROM [KANDYDAT] AS k
INNER JOIN
APLIKACJA AS a
ON k.Id_kandydata=a.Id_kandydata
INNER JOIN
OFERTA as o
ON o.Id_oferty = a.Id_oferty
INNER JOIN
STANOWISKO as s
ON o.Id_stanowiska=s.Id_stanowiska
WHERE Data_urodzenia &gt;= @data AND Obywatelstwo_kandydata = @obywatel AND Wyksztalcenie_kandydata=@wyksztal
" OnSelecting="GV_DataSql_Selecting">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="data" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox2" Name="obywatel" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox3" Name="wyksztal" PropertyName="Text" />
    </SelectParameters>
    
</asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
