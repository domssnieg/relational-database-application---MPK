<%@ Page Title="Dodaj trasę" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_trase.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_trase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>Trasa:
        <br>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ErrorMessage="Podaj trasę." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br>
    Trasa alternatywna: 
        <br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br>
    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
    <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Trasa] WHERE [Id_trasa] = @Id_trasa" InsertCommand="INSERT INTO [Trasa] ([trasa], [trasa_alternatywna]) VALUES (@trasa, @trasa_alternatywna)" SelectCommand="SELECT * FROM [Trasa]" UpdateCommand="UPDATE [Trasa] SET [trasa] = @trasa, [trasa_alternatywna] = @trasa_alternatywna WHERE [Id_trasa] = @Id_trasa">
        <DeleteParameters>
            <asp:Parameter Name="Id_trasa" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="trasa" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="trasa_alternatywna" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="trasa" Type="String" />
            <asp:Parameter Name="trasa_alternatywna" Type="String" />
            <asp:Parameter Name="Id_trasa" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
