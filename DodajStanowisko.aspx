<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DodajStanowisko.aspx.cs" Inherits="WebApplication1.DodajStanowisko" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    `<br />
    <br />
    <br />
    <br />
    <asp:DetailsView ID="GV_DodajStanowisko" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id_stanowiska" DataSourceID="GV_DataSql" Height="50px" Width="1242px">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="Id_stanowiska" HeaderText="Id_stanowiska" InsertVisible="False" ReadOnly="True" SortExpression="Id_stanowiska" />
        <asp:BoundField DataField="Nazwa_stanowiska" HeaderText="Nazwa_stanowiska" SortExpression="Nazwa_stanowiska" />
        <asp:BoundField DataField="Wynagrodzenie_na_stanowisku" HeaderText="Wynagrodzenie_na_stanowisku" SortExpression="Wynagrodzenie_na_stanowisku" />
        <asp:BoundField DataField="Etat_na_stanowisku" HeaderText="Etat_na_stanowisku" SortExpression="Etat_na_stanowisku" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<asp:SqlDataSource ID="GV_DataSql" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" DeleteCommand="DELETE FROM [STANOWISKO] WHERE [Id_stanowiska] = @Id_stanowiska" InsertCommand="INSERT INTO [STANOWISKO] ([Nazwa_stanowiska], [Wynagrodzenie_na_stanowisku], [Etat_na_stanowisku]) VALUES (@Nazwa_stanowiska, @Wynagrodzenie_na_stanowisku, @Etat_na_stanowisku)" SelectCommand="SELECT * FROM [STANOWISKO]" UpdateCommand="UPDATE [STANOWISKO] SET [Nazwa_stanowiska] = @Nazwa_stanowiska, [Wynagrodzenie_na_stanowisku] = @Wynagrodzenie_na_stanowisku, [Etat_na_stanowisku] = @Etat_na_stanowisku WHERE [Id_stanowiska] = @Id_stanowiska">
    <DeleteParameters>
        <asp:Parameter Name="Id_stanowiska" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Nazwa_stanowiska" Type="String" />
        <asp:Parameter Name="Wynagrodzenie_na_stanowisku" Type="Decimal" />
        <asp:Parameter Name="Etat_na_stanowisku" Type="Single" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Nazwa_stanowiska" Type="String" />
        <asp:Parameter Name="Wynagrodzenie_na_stanowisku" Type="Decimal" />
        <asp:Parameter Name="Etat_na_stanowisku" Type="Single" />
        <asp:Parameter Name="Id_stanowiska" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
</asp:Content>
