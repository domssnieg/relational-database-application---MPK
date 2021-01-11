<%@ Page Title="Dodaj stawkę" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_stawke.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_stawke" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Stawka:
        <br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj stawkę."></asp:RequiredFieldValidator>
        <br>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Placa] WHERE [Id_placa] = @Id_placa" InsertCommand="INSERT INTO [Placa] ([placa_na_h]) VALUES (@placa_na_h)" SelectCommand="SELECT * FROM [Placa]" UpdateCommand="UPDATE [Placa] SET [placa_na_h] = @placa_na_h WHERE [Id_placa] = @Id_placa">
            <DeleteParameters>
                <asp:Parameter Name="Id_placa" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="placa_na_h" PropertyName="Text" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="placa_na_h" Type="Decimal" />
                <asp:Parameter Name="Id_placa" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
