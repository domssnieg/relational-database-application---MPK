<%@ Page Title="Dodaj pojazd" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_pojazd.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_pojazd" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Numer identyfikacyjny pojazdu:
        <br> 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Wprowadź numer identyfikacyjny pojazdu.">*</asp:RequiredFieldValidator>
   <br>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Marka] ORDER BY [marka]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Model] WHERE ([id_marka] = @id_marka) ORDER BY [model]">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="id_marka" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Rok_produkcji] ORDER BY [rok_produkcji]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Numer_identyfikacyjny_autobusu] WHERE [Id_nr_identyfikacyjny_autobusu] = @Id_nr_identyfikacyjny_autobusu" InsertCommand="INSERT INTO [Numer_identyfikacyjny_autobusu] ([id_model], [Id_rok_produkcji], [tablica_rejestracyjna]) VALUES (@id_model, @Id_rok_produkcji, @tablica_rejestracyjna)" SelectCommand="SELECT * FROM [Numer_identyfikacyjny_autobusu]" UpdateCommand="UPDATE [Numer_identyfikacyjny_autobusu] SET [id_model] = @id_model, [Id_rok_produkcji] = @Id_rok_produkcji, [tablica_rejestracyjna] = @tablica_rejestracyjna WHERE [Id_nr_identyfikacyjny_autobusu] = @Id_nr_identyfikacyjny_autobusu">
        <DeleteParameters>
            <asp:Parameter Name="Id_nr_identyfikacyjny_autobusu" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="id_model" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList3" Name="Id_rok_produkcji" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox1" Name="tablica_rejestracyjna" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_model" Type="Int32" />
            <asp:Parameter Name="Id_rok_produkcji" Type="Int32" />
            <asp:Parameter Name="tablica_rejestracyjna" Type="String" />
            <asp:Parameter Name="Id_nr_identyfikacyjny_autobusu" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
        Marka: 
        <br>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="marka" DataValueField="id_marka">
        </asp:DropDownList>
    <br>
        Model: 
        <br>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="model" DataValueField="Id_model">
        </asp:DropDownList>
    <br>
        Rok produkcji: 
        <br>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="rok_produkcji" DataValueField="Id_rok_produkcji">
        </asp:DropDownList>
        <br>
    <asp:Button ID="Button1" runat="server" Text="Dodaj" BackColor="White" Font-Bold="True" Font-Size="Large" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Width="90px" />
    </asp:Content>
