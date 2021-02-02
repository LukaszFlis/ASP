<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodanie_oferty.aspx.cs" Inherits="WebApplication1.Dodanie_oferty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br/>
    <br/>
    <br/>
    <br />
    <asp:GridView ID="GV_Dodaj_oferta" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id_oferty" DataSourceID="GV_sql_data" Width="1251px">
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="Id_oferty" HeaderText="Id_oferty" InsertVisible="False" ReadOnly="True" SortExpression="Id_oferty" />
        <asp:BoundField DataField="Nazwa_stanowiska" HeaderText="Nazwa_stanowiska" SortExpression="Nazwa_stanowiska" />
        <asp:BoundField DataField="Data_dodania" HeaderText="Data_dodania" ReadOnly="True" SortExpression="Data_dodania" />
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
<asp:DetailsView ID="DV_dodaj_oferta" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id_oferty" DataSourceID="DV_sql_data" Height="50px" OnItemInserted="DV_dodaj_oferta_ItemInserted" OnItemUpdated="DV_dodaj_oferta_ItemUpdated" Width="350px">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="Id_oferty" HeaderText="Id_oferty" InsertVisible="False" ReadOnly="True" SortExpression="Id_oferty" />
        <asp:TemplateField HeaderText="Id_stanowiska" SortExpression="Id_stanowiska">
            <EditItemTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nazwa_stanowiska" DataValueField="Id_stanowiska" SelectedValue='<%# Bind("Id_stanowiska") %>'>
                </asp:DropDownList>
            </EditItemTemplate>
            <InsertItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id_stanowiska") %>'></asp:TextBox>
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_stanowiska") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Forma_zatrudnienia" HeaderText="Forma_zatrudnienia" SortExpression="Forma_zatrudnienia" />
        <asp:BoundField DataField="Etat_oferta" HeaderText="Etat_oferta" SortExpression="Etat_oferta" />
        <asp:BoundField DataField="Wynagrodzenie_brutto" HeaderText="Wynagrodzenie_brutto" SortExpression="Wynagrodzenie_brutto" />
        <asp:BoundField DataField="Obywatelstwo" HeaderText="Obywatelstwo" SortExpression="Obywatelstwo" />
        <asp:BoundField DataField="Maksymalny_wiek_kandydata" HeaderText="Maksymalny_wiek_kandydata" SortExpression="Maksymalny_wiek_kandydata" />
        <asp:BoundField DataField="Wyksztalcenie" HeaderText="Wyksztalcenie" SortExpression="Wyksztalcenie" />
        <asp:BoundField DataField="Zawod" HeaderText="Zawod" SortExpression="Zawod" />
        <asp:BoundField DataField="Staz_pracy" HeaderText="Staz_pracy" SortExpression="Staz_pracy" />
        <asp:BoundField DataField="Uprawnienia" HeaderText="Uprawnienia" SortExpression="Uprawnienia" />
        <asp:BoundField DataField="Kontakt_telefoniczny" HeaderText="Kontakt_telefoniczny" SortExpression="Kontakt_telefoniczny" />
        <asp:BoundField DataField="Data_dodania" HeaderText="Data_dodania" SortExpression="Data_dodania" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
<asp:SqlDataSource ID="GV_sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT o.Id_oferty, s.Nazwa_stanowiska , CONVERT (varchar(10),o.Data_dodania,23) as Data_dodania
FROM
OFERTA as o
INNER JOIN STANOWISKO as s
ON o.Id_stanowiska = s.Id_stanowiska
"></asp:SqlDataSource>
<asp:SqlDataSource ID="DV_sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" DeleteCommand="DELETE FROM [OFERTA] WHERE [Id_oferty] = @Id_oferty" InsertCommand="INSERT INTO [OFERTA] ([Id_stanowiska], [Forma_zatrudnienia], [Etat_oferta], [Wynagrodzenie_brutto], [Obywatelstwo], [Maksymalny_wiek_kandydata], [Wyksztalcenie], [Zawod], [Staz_pracy], [Uprawnienia], [Kontakt_telefoniczny], [Data_dodania]) VALUES (@Id_stanowiska, @Forma_zatrudnienia, @Etat_oferta, @Wynagrodzenie_brutto, @Obywatelstwo, @Maksymalny_wiek_kandydata, @Wyksztalcenie, @Zawod, @Staz_pracy, @Uprawnienia, @Kontakt_telefoniczny, @Data_dodania)" SelectCommand="SELECT * FROM [OFERTA] WHERE ([Id_oferty] = @Id_oferty)" UpdateCommand="UPDATE [OFERTA] SET [Id_stanowiska] = @Id_stanowiska, [Forma_zatrudnienia] = @Forma_zatrudnienia, [Etat_oferta] = @Etat_oferta, [Wynagrodzenie_brutto] = @Wynagrodzenie_brutto, [Obywatelstwo] = @Obywatelstwo, [Maksymalny_wiek_kandydata] = @Maksymalny_wiek_kandydata, [Wyksztalcenie] = @Wyksztalcenie, [Zawod] = @Zawod, [Staz_pracy] = @Staz_pracy, [Uprawnienia] = @Uprawnienia, [Kontakt_telefoniczny] = @Kontakt_telefoniczny, [Data_dodania] = @Data_dodania WHERE [Id_oferty] = @Id_oferty">
    <DeleteParameters>
        <asp:Parameter Name="Id_oferty" Type="Decimal" />
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
        <asp:ControlParameter ControlID="GV_Dodaj_oferta" Name="Id_oferty" PropertyName="SelectedValue" Type="Decimal" />
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
        <asp:Parameter Name="Id_oferty" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ONLINE_HRConnectionString %>" SelectCommand="SELECT [Id_stanowiska], [Nazwa_stanowiska] FROM [STANOWISKO]"></asp:SqlDataSource>
<br />
<br />
</asp:Content>
