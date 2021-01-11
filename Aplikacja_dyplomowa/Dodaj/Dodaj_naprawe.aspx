<%@ Page Title="Dodaj naprawę" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_naprawe.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_naprawe" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Numer identyfikacyjny pojazdu: <br>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="tablica_rejestracyjna" DataValueField="Id_nr_identyfikacyjny_autobusu">
        </asp:DropDownList>
    <br>
    Data rozpoczęcia (YYYY-MM-DD): 
        <br>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj datę rozpoczęcia.">*</asp:RequiredFieldValidator>
    <br>
    Data zakończenia (YYYY-MM-DD):
         <br>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Podaj datę zakończenia.">*</asp:RequiredFieldValidator>
    <br>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
     <br>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Numer_identyfikacyjny_autobusu] ORDER BY [tablica_rejestracyjna]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Naprawy] WHERE [Id_naprawy] = @Id_naprawy" InsertCommand="INSERT INTO [Naprawy] ([Id_nr_identyfikacyjny_autobusu], [naprawy_wyjscie], [naprawy_powrot]) VALUES (@Id_nr_identyfikacyjny_autobusu, @naprawy_wyjscie, @naprawy_powrot)" SelectCommand="SELECT * FROM [Naprawy]" UpdateCommand="UPDATE [Naprawy] SET [Id_nr_identyfikacyjny_autobusu] = @Id_nr_identyfikacyjny_autobusu, [naprawy_wyjscie] = @naprawy_wyjscie, [naprawy_powrot] = @naprawy_powrot WHERE [Id_naprawy] = @Id_naprawy">
            <DeleteParameters>
                <asp:Parameter Name="Id_naprawy" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="Id_nr_identyfikacyjny_autobusu" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="naprawy_wyjscie" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="naprawy_powrot" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_nr_identyfikacyjny_autobusu" Type="Int32" />
                <asp:Parameter DbType="Date" Name="naprawy_wyjscie" />
                <asp:Parameter DbType="Date" Name="naprawy_powrot" />
                <asp:Parameter Name="Id_naprawy" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
