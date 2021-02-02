<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodanie_kandydat.aspx.cs" Inherits="WebApplication1.DodajKandydat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br />
    <br />
    <br/>
    <asp:DetailsView ID="DV_DodajKandydat" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="GV_DataSql" Height="50px" Width="1220px" AutoGenerateRows="False" DataKeyNames="Id_kandydata">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Id_kandydata" HeaderText="Id_kandydata" InsertVisible="False" ReadOnly="True" SortExpression="Id_kandydata" />
            <asp:BoundField DataField="Imie_kandydata" HeaderText="Imie_kandydata" SortExpression="Imie_kandydata" />
            <asp:BoundField DataField="Nazwisko_kandydata" HeaderText="Nazwisko_kandydata" SortExpression="Nazwisko_kandydata" />
            <asp:BoundField DataField="Data_urodzenia" HeaderText="Data_urodzenia" SortExpression="Data_urodzenia" />
            <asp:BoundField DataField="Obywatelstwo_kandydata" HeaderText="Obywatelstwo_kandydata" SortExpression="Obywatelstwo_kandydata" />
            <asp:BoundField DataField="Adres_kandydata" HeaderText="Adres_kandydata" SortExpression="Adres_kandydata" />
            <asp:BoundField DataField="Wyksztalcenie_kandydata" HeaderText="Wyksztalcenie_kandydata" SortExpression="Wyksztalcenie_kandydata" />
            <asp:BoundField DataField="Zawod_kandydata" HeaderText="Zawod_kandydata" SortExpression="Zawod_kandydata" />
            <asp:BoundField DataField="Staz_kandydata" HeaderText="Staz_kandydata" SortExpression="Staz_kandydata" />
            <asp:BoundField DataField="Uprawnienia_kandydata" HeaderText="Uprawnienia_kandydata" SortExpression="Uprawnienia_kandydata" />
            <asp:BoundField DataField="Telefon_kandydata" HeaderText="Telefon_kandydata" SortExpression="Telefon_kandydata" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<br />
<asp:SqlDataSource ID="GV_DataSql" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" SelectCommand="SELECT * FROM [KANDYDAT] ORDER BY [Id_kandydata]" DeleteCommand="DELETE FROM [KANDYDAT] WHERE [Id_kandydata] = @Id_kandydata" InsertCommand="INSERT INTO [KANDYDAT] ([Imie_kandydata], [Nazwisko_kandydata], [Data_urodzenia], [Obywatelstwo_kandydata], [Adres_kandydata], [Wyksztalcenie_kandydata], [Zawod_kandydata], [Staz_kandydata], [Uprawnienia_kandydata], [Telefon_kandydata]) VALUES (@Imie_kandydata, @Nazwisko_kandydata, @Data_urodzenia, @Obywatelstwo_kandydata, @Adres_kandydata, @Wyksztalcenie_kandydata, @Zawod_kandydata, @Staz_kandydata, @Uprawnienia_kandydata, @Telefon_kandydata)" UpdateCommand="UPDATE [KANDYDAT] SET [Imie_kandydata] = @Imie_kandydata, [Nazwisko_kandydata] = @Nazwisko_kandydata, [Data_urodzenia] = @Data_urodzenia, [Obywatelstwo_kandydata] = @Obywatelstwo_kandydata, [Adres_kandydata] = @Adres_kandydata, [Wyksztalcenie_kandydata] = @Wyksztalcenie_kandydata, [Zawod_kandydata] = @Zawod_kandydata, [Staz_kandydata] = @Staz_kandydata, [Uprawnienia_kandydata] = @Uprawnienia_kandydata, [Telefon_kandydata] = @Telefon_kandydata WHERE [Id_kandydata] = @Id_kandydata">
    <DeleteParameters>
        <asp:Parameter Name="Id_kandydata" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Imie_kandydata" Type="String" />
        <asp:Parameter Name="Nazwisko_kandydata" Type="String" />
        <asp:Parameter Name="Data_urodzenia" Type="DateTime" />
        <asp:Parameter Name="Obywatelstwo_kandydata" Type="String" />
        <asp:Parameter Name="Adres_kandydata" Type="String" />
        <asp:Parameter Name="Wyksztalcenie_kandydata" Type="String" />
        <asp:Parameter Name="Zawod_kandydata" Type="String" />
        <asp:Parameter Name="Staz_kandydata" Type="Int16" />
        <asp:Parameter Name="Uprawnienia_kandydata" Type="String" />
        <asp:Parameter Name="Telefon_kandydata" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Imie_kandydata" Type="String" />
        <asp:Parameter Name="Nazwisko_kandydata" Type="String" />
        <asp:Parameter Name="Data_urodzenia" Type="DateTime" />
        <asp:Parameter Name="Obywatelstwo_kandydata" Type="String" />
        <asp:Parameter Name="Adres_kandydata" Type="String" />
        <asp:Parameter Name="Wyksztalcenie_kandydata" Type="String" />
        <asp:Parameter Name="Zawod_kandydata" Type="String" />
        <asp:Parameter Name="Staz_kandydata" Type="Int16" />
        <asp:Parameter Name="Uprawnienia_kandydata" Type="String" />
        <asp:Parameter Name="Telefon_kandydata" Type="String" />
        <asp:Parameter Name="Id_kandydata" Type="Decimal" />
    </UpdateParameters>
    </asp:SqlDataSource>
<br />

</asp:Content>
