<%@ Page Title="Dodaj pracownika" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_pracownika.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_pracownika" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    
        Imię: 
        <br>
        <asp:TextBox ID="imie" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Wprowadź imię." ControlToValidate="imie" ForeColor="#0066CC">*</asp:RequiredFieldValidator>
    <br>
        Nazwisko: 
         <br>
        <asp:TextBox ID="nazwisko" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Wprowadź nazwisko." ControlToValidate="nazwisko" ForeColor="#336699">*</asp:RequiredFieldValidator>
        <br>
        Numer telefonu: 
         <br>
        <asp:TextBox ID="nrtel" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Wprowadź numer telefonu." ControlToValidate="nrtel">*</asp:RequiredFieldValidator>
    <br>
        Ulica, nr domu/mieszkania (jeśli dotyczy): 
         <br>
        <asp:TextBox ID="ulica" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Wprowadź ulicę oraz numer mieszkania." ControlToValidate="ulica">*</asp:RequiredFieldValidator>
        <br>
        Kod pocztowy: 
         <br>
        <asp:TextBox ID="kodpocztowy" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Wprowadź kod pocztowy." ControlToValidate="kodpocztowy">*</asp:RequiredFieldValidator>
        <br>
        Miejscowość: 
         <br><asp:TextBox ID="miasto" runat="server" Font-Names="Arial"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Wprowadź nazwę miejscowości." ControlToValidate="miasto">*</asp:RequiredFieldValidator>
    </p>
    <p>
    
        Dział:</p>
    <p>
    
        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource5" DataTextField="dzial" DataValueField="Id_dzial">
        </asp:DropDownList>
        <br>
        Stanowisko: 
         <br>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Stanowisko" DataValueField="Id_stanowisko">
        </asp:DropDownList>
        <br>
        Stawka (zł/h):
         <br>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="placa_na_h" DataValueField="Id_placa">
        </asp:DropDownList>
        <br>
        <asp:Button ID="Button1" runat="server" Text="Dodaj" BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Width="90px" />
    <br>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Stanowisko] WHERE [Id_stanowisko] = @Id_stanowisko" InsertCommand="INSERT INTO [Stanowisko] ([Stanowisko]) VALUES (@Stanowisko)" SelectCommand="SELECT Stanowisko.Id_stanowisko, Stanowisko.Stanowisko, Dzial_stanowisko.Id_dzial, Dzial_stanowisko.Id_stanowisko AS Expr1, Dzial.dzial, Dzial.Id_dzial AS Expr2 FROM Stanowisko INNER JOIN Dzial_stanowisko ON Stanowisko.Id_stanowisko = Dzial_stanowisko.Id_stanowisko INNER JOIN Dzial ON Dzial_stanowisko.Id_dzial = Dzial.Id_dzial 
where 
@dzial = Dzial.Id_dzial
ORDER BY Stanowisko.Stanowisko" UpdateCommand="UPDATE [Stanowisko] SET [Stanowisko] = @Stanowisko WHERE [Id_stanowisko] = @Id_stanowisko">
            <DeleteParameters>
                <asp:Parameter Name="Id_stanowisko" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Stanowisko" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="dzial" PropertyName="SelectedValue" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stanowisko" Type="String" />
                <asp:Parameter Name="Id_stanowisko" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Placa] ORDER BY [placa_na_h]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Pracownik] WHERE [Id_pracownik] = @Id_pracownik" InsertCommand="INSERT INTO [Pracownik] ([Id_dzial_stanowisko], [Id_placa], [imie], [nazwisko], [adres1], [adres2], [adres3], [nr_telefonu], [staz_pracy]) VALUES (@Id_dzial_stanowisko, @Id_placa, @imie, @nazwisko, @adres1, @adres2, @adres3, @nr_telefonu, @staz_pracy)" SelectCommand="SELECT * FROM [Pracownik]" UpdateCommand="UPDATE [Pracownik] SET [Id_dzial_stanowisko] = @Id_dzial_stanowisko, [Id_placa] = @Id_placa, [imie] = @imie, [nazwisko] = @nazwisko, [adres1] = @adres1, [adres2] = @adres2, [adres3] = @adres3, [nr_telefonu] = @nr_telefonu, [staz_pracy] = @staz_pracy WHERE [Id_pracownik] = @Id_pracownik">
            <DeleteParameters>
                <asp:Parameter Name="Id_pracownik" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList5" Name="Id_dzial_stanowisko" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList3" Name="Id_placa" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="imie" Name="imie" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="nazwisko" Name="nazwisko" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="ulica" Name="adres1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="kodpocztowy" Name="adres2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="miasto" Name="adres3" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="nrtel" Name="nr_telefonu" PropertyName="Text" Type="String" />
                <asp:Parameter Name="staz_pracy" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_dzial_stanowisko" Type="Int32" />
                <asp:Parameter Name="Id_placa" Type="Int32" />
                <asp:Parameter Name="imie" Type="String" />
                <asp:Parameter Name="nazwisko" Type="String" />
                <asp:Parameter Name="adres1" Type="String" />
                <asp:Parameter Name="adres2" Type="String" />
                <asp:Parameter Name="adres3" Type="String" />
                <asp:Parameter Name="nr_telefonu" Type="String" />
                <asp:Parameter Name="staz_pracy" Type="Int32" />
                <asp:Parameter Name="Id_pracownik" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dzial] ORDER BY [dzial]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Dzial_stanowisko.Id_dzial_stanowisko, Dzial_stanowisko.Id_dzial, Dzial_stanowisko.Id_stanowisko, Dzial.dzial, Dzial.Id_dzial AS Expr1, Stanowisko.Id_stanowisko AS Expr2, Stanowisko.Stanowisko FROM Dzial_stanowisko INNER JOIN Dzial ON Dzial_stanowisko.Id_dzial = Dzial.Id_dzial INNER JOIN Stanowisko ON Dzial_stanowisko.Id_stanowisko = Stanowisko.Id_stanowisko
where
Dzial_stanowisko.Id_stanowisko = @id_stanowisko
and
Dzial_stanowisko.Id_dzial = @id_dzial
">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="id_dzial" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="id_stanowisko" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="Id_dzial_stanowisko" DataValueField="Id_dzial_stanowisko" Visible="False">
        </asp:DropDownList>
    </p>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

</asp:Content>
