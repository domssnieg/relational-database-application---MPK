<%@ Page Title="Dodaj przystanek" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_przystanek.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.WebForm1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<p>
        Nazwa przystanku:
    <br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj nazwę przystanku.">*</asp:RequiredFieldValidator>
    <br>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
    <br>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Lokalizacja_przystanku] WHERE [Id_lokalizacja_przystanek] = @Id_lokalizacja_przystanek" InsertCommand="INSERT INTO [Lokalizacja_przystanku] ([dlugosc], [szerokosc]) VALUES (@dlugosc, @szerokosc)" SelectCommand="SELECT * FROM [Lokalizacja_przystanku]" UpdateCommand="UPDATE [Lokalizacja_przystanku] SET [dlugosc] = @dlugosc, [szerokosc] = @szerokosc WHERE [Id_lokalizacja_przystanek] = @Id_lokalizacja_przystanek">
        <DeleteParameters>
            <asp:Parameter Name="Id_lokalizacja_przystanek" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="dlugosc" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter Name="szerokosc" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="dlugosc" Type="Int32" />
            <asp:Parameter Name="szerokosc" Type="Int32" />
            <asp:Parameter Name="Id_lokalizacja_przystanek" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Wykaz_przystankow] WHERE [Id_wykaz_przysankow] = @Id_wykaz_przysankow" InsertCommand="INSERT INTO [Wykaz_przystankow] ([Id_lokalizacja_przystanek], [nazwa_przystanku]) VALUES (@Id_lokalizacja_przystanek, @nazwa_przystanku)" SelectCommand="SELECT * FROM [Wykaz_przystankow]" UpdateCommand="UPDATE [Wykaz_przystankow] SET [Id_lokalizacja_przystanek] = @Id_lokalizacja_przystanek, [nazwa_przystanku] = @nazwa_przystanku WHERE [Id_wykaz_przysankow] = @Id_wykaz_przysankow">
        <DeleteParameters>
            <asp:Parameter Name="Id_wykaz_przysankow" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Id_lokalizacja_przystanek" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox1" Name="nazwa_przystanku" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Id_lokalizacja_przystanek" Type="Int32" />
            <asp:Parameter Name="nazwa_przystanku" Type="String" />
            <asp:Parameter Name="Id_wykaz_przysankow" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
