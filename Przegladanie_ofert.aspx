<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Przegladanie_ofert.aspx.cs" Inherits="WebApplication1.Przegladanie_ofert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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
    <br />
    <br/>
    <br/>
    <br/>
    <asp:Label ID="Label1" runat="server" Text="Data_od"></asp:Label> 
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox> <br>
    <asp:Label ID="Label2" runat="server" Text="Data_do"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nazwa_stanowiska"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" Enabled="False" Visible="False"></asp:TextBox>
    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
    <br />
<asp:Button ID="Button1" runat="server" Text="wyszukaj" Width="179px" OnClick="Button1_Click"/>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" DeleteCommand="DELETE FROM [OFERTA] WHERE [Id_oferty] = @original_Id_oferty AND [Id_stanowiska] = @original_Id_stanowiska AND (([Forma_zatrudnienia] = @original_Forma_zatrudnienia) OR ([Forma_zatrudnienia] IS NULL AND @original_Forma_zatrudnienia IS NULL)) AND (([Etat_oferta] = @original_Etat_oferta) OR ([Etat_oferta] IS NULL AND @original_Etat_oferta IS NULL)) AND (([Wynagrodzenie_brutto] = @original_Wynagrodzenie_brutto) OR ([Wynagrodzenie_brutto] IS NULL AND @original_Wynagrodzenie_brutto IS NULL)) AND (([Obywatelstwo] = @original_Obywatelstwo) OR ([Obywatelstwo] IS NULL AND @original_Obywatelstwo IS NULL)) AND (([Maksymalny_wiek_kandydata] = @original_Maksymalny_wiek_kandydata) OR ([Maksymalny_wiek_kandydata] IS NULL AND @original_Maksymalny_wiek_kandydata IS NULL)) AND (([Wyksztalcenie] = @original_Wyksztalcenie) OR ([Wyksztalcenie] IS NULL AND @original_Wyksztalcenie IS NULL)) AND (([Zawod] = @original_Zawod) OR ([Zawod] IS NULL AND @original_Zawod IS NULL)) AND (([Staz_pracy] = @original_Staz_pracy) OR ([Staz_pracy] IS NULL AND @original_Staz_pracy IS NULL)) AND (([Uprawnienia] = @original_Uprawnienia) OR ([Uprawnienia] IS NULL AND @original_Uprawnienia IS NULL)) AND (([Kontakt_telefoniczny] = @original_Kontakt_telefoniczny) OR ([Kontakt_telefoniczny] IS NULL AND @original_Kontakt_telefoniczny IS NULL)) AND (([Data_dodania] = @original_Data_dodania) OR ([Data_dodania] IS NULL AND @original_Data_dodania IS NULL))" InsertCommand="INSERT INTO [OFERTA] ([Id_stanowiska], [Forma_zatrudnienia], [Etat_oferta], [Wynagrodzenie_brutto], [Obywatelstwo], [Maksymalny_wiek_kandydata], [Wyksztalcenie], [Zawod], [Staz_pracy], [Uprawnienia], [Kontakt_telefoniczny], [Data_dodania]) VALUES (@Id_stanowiska, @Forma_zatrudnienia, @Etat_oferta, @Wynagrodzenie_brutto, @Obywatelstwo, @Maksymalny_wiek_kandydata, @Wyksztalcenie, @Zawod, @Staz_pracy, @Uprawnienia, @Kontakt_telefoniczny, @Data_dodania)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Nazwa_stanowiska]
	   ,CONVERT(varchar(10),Data_dodania,23) As Data_dodania
	   ,COUNT(Id_oferty ) AS 'Ilosc_Ofert'   
FROM [dbo].[OFERTA] AS o
Inner Join
[dbo].[STANOWISKO] AS s
ON o.Id_stanowiska = s.Id_stanowiska
WHERE
 ( Data_dodania BETWEEN @data1 AND @data2)
Group BY 
[Nazwa_stanowiska], [Data_dodania]
ORDER BY
[Data_dodania]" UpdateCommand="UPDATE [OFERTA] SET [Id_stanowiska] = @Id_stanowiska, [Forma_zatrudnienia] = @Forma_zatrudnienia, [Etat_oferta] = @Etat_oferta, [Wynagrodzenie_brutto] = @Wynagrodzenie_brutto, [Obywatelstwo] = @Obywatelstwo, [Maksymalny_wiek_kandydata] = @Maksymalny_wiek_kandydata, [Wyksztalcenie] = @Wyksztalcenie, [Zawod] = @Zawod, [Staz_pracy] = @Staz_pracy, [Uprawnienia] = @Uprawnienia, [Kontakt_telefoniczny] = @Kontakt_telefoniczny, [Data_dodania] = @Data_dodania WHERE [Id_oferty] = @original_Id_oferty AND [Id_stanowiska] = @original_Id_stanowiska AND (([Forma_zatrudnienia] = @original_Forma_zatrudnienia) OR ([Forma_zatrudnienia] IS NULL AND @original_Forma_zatrudnienia IS NULL)) AND (([Etat_oferta] = @original_Etat_oferta) OR ([Etat_oferta] IS NULL AND @original_Etat_oferta IS NULL)) AND (([Wynagrodzenie_brutto] = @original_Wynagrodzenie_brutto) OR ([Wynagrodzenie_brutto] IS NULL AND @original_Wynagrodzenie_brutto IS NULL)) AND (([Obywatelstwo] = @original_Obywatelstwo) OR ([Obywatelstwo] IS NULL AND @original_Obywatelstwo IS NULL)) AND (([Maksymalny_wiek_kandydata] = @original_Maksymalny_wiek_kandydata) OR ([Maksymalny_wiek_kandydata] IS NULL AND @original_Maksymalny_wiek_kandydata IS NULL)) AND (([Wyksztalcenie] = @original_Wyksztalcenie) OR ([Wyksztalcenie] IS NULL AND @original_Wyksztalcenie IS NULL)) AND (([Zawod] = @original_Zawod) OR ([Zawod] IS NULL AND @original_Zawod IS NULL)) AND (([Staz_pracy] = @original_Staz_pracy) OR ([Staz_pracy] IS NULL AND @original_Staz_pracy IS NULL)) AND (([Uprawnienia] = @original_Uprawnienia) OR ([Uprawnienia] IS NULL AND @original_Uprawnienia IS NULL)) AND (([Kontakt_telefoniczny] = @original_Kontakt_telefoniczny) OR ([Kontakt_telefoniczny] IS NULL AND @original_Kontakt_telefoniczny IS NULL)) AND (([Data_dodania] = @original_Data_dodania) OR ([Data_dodania] IS NULL AND @original_Data_dodania IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_Id_oferty" Type="Decimal" />
        <asp:Parameter Name="original_Id_stanowiska" Type="Decimal" />
        <asp:Parameter Name="original_Forma_zatrudnienia" Type="String" />
        <asp:Parameter Name="original_Etat_oferta" Type="Single" />
        <asp:Parameter Name="original_Wynagrodzenie_brutto" Type="Decimal" />
        <asp:Parameter Name="original_Obywatelstwo" Type="String" />
        <asp:Parameter Name="original_Maksymalny_wiek_kandydata" Type="Int16" />
        <asp:Parameter Name="original_Wyksztalcenie" Type="String" />
        <asp:Parameter Name="original_Zawod" Type="String" />
        <asp:Parameter Name="original_Staz_pracy" Type="Int16" />
        <asp:Parameter Name="original_Uprawnienia" Type="String" />
        <asp:Parameter Name="original_Kontakt_telefoniczny" Type="String" />
        <asp:Parameter Name="original_Data_dodania" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Id_stanowiska" Type="Decimal" />
        <asp:Parameter Name="Forma_zatrudnienia" Type="String" />
        <asp:Parameter Name="Etat_oferta" Type="Single" />
        <asp:Parameter Name="Wynagrodzenie_brutto" Type="Decimal" />
        <asp:Parameter Name="Obywatelstwo" Type="String" />
        <asp:Parameter Name="Maksymalny_wiek_kandydata" Type="Int16" />
        <asp:Parameter Name="Wyksztalcenie" Type="String" />
        <asp:Parameter Name="Zawod" Type="String" />
        <asp:Parameter Name="Staz_pracy" Type="Int16" />
        <asp:Parameter Name="Uprawnienia" Type="String" />
        <asp:Parameter Name="Kontakt_telefoniczny" Type="String" />
        <asp:Parameter Name="Data_dodania" Type="DateTime" />
    </InsertParameters>
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="data1" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox2" Name="data2" PropertyName="Text" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="Id_stanowiska" Type="Decimal" />
        <asp:Parameter Name="Forma_zatrudnienia" Type="String" />
        <asp:Parameter Name="Etat_oferta" Type="Single" />
        <asp:Parameter Name="Wynagrodzenie_brutto" Type="Decimal" />
        <asp:Parameter Name="Obywatelstwo" Type="String" />
        <asp:Parameter Name="Maksymalny_wiek_kandydata" Type="Int16" />
        <asp:Parameter Name="Wyksztalcenie" Type="String" />
        <asp:Parameter Name="Zawod" Type="String" />
        <asp:Parameter Name="Staz_pracy" Type="Int16" />
        <asp:Parameter Name="Uprawnienia" Type="String" />
        <asp:Parameter Name="Kontakt_telefoniczny" Type="String" />
        <asp:Parameter Name="Data_dodania" Type="DateTime" />
        <asp:Parameter Name="original_Id_oferty" Type="Decimal" />
        <asp:Parameter Name="original_Id_stanowiska" Type="Decimal" />
        <asp:Parameter Name="original_Forma_zatrudnienia" Type="String" />
        <asp:Parameter Name="original_Etat_oferta" Type="Single" />
        <asp:Parameter Name="original_Wynagrodzenie_brutto" Type="Decimal" />
        <asp:Parameter Name="original_Obywatelstwo" Type="String" />
        <asp:Parameter Name="original_Maksymalny_wiek_kandydata" Type="Int16" />
        <asp:Parameter Name="original_Wyksztalcenie" Type="String" />
        <asp:Parameter Name="original_Zawod" Type="String" />
        <asp:Parameter Name="original_Staz_pracy" Type="Int16" />
        <asp:Parameter Name="original_Uprawnienia" Type="String" />
        <asp:Parameter Name="original_Kontakt_telefoniczny" Type="String" />
        <asp:Parameter Name="original_Data_dodania" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" SelectCommand="SELECT [Nazwa_stanowiska]
	   ,CONVERT (varchar(12),Data_dodania,23) as Data_dodania
	   ,COUNT(Id_oferty ) AS 'Ilosc_Ofert'   
FROM [dbo].[OFERTA] AS o
Inner Join
[dbo].[STANOWISKO] AS s
ON o.Id_stanowiska = s.Id_stanowiska
WHERE
  Nazwa_stanowiska = @stanowisko
Group BY 
[Nazwa_stanowiska], [Data_dodania]
ORDER BY
[Data_dodania]">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox3" Name="stanowisko" PropertyName="Text" DefaultValue="kadrowa" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
