<%@ Page Title="Dodaj stanowisko" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_stanowisko.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_stanowisko" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Stanowisko:
        <br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj stanowisko."></asp:RequiredFieldValidator>
        <br><asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Stanowisko] WHERE [Id_stanowisko] = @Id_stanowisko" InsertCommand="INSERT INTO [Stanowisko] ([Stanowisko]) VALUES (@Stanowisko)" SelectCommand="SELECT * FROM [Stanowisko]" UpdateCommand="UPDATE [Stanowisko] SET [Stanowisko] = @Stanowisko WHERE [Id_stanowisko] = @Id_stanowisko">
            <DeleteParameters>
                <asp:Parameter Name="Id_stanowisko" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Stanowisko" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stanowisko" Type="String" />
                <asp:Parameter Name="Id_stanowisko" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
