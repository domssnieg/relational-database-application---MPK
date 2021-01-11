<%@ Page Title="Dodaj część" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_czesc.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_czesc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Część autobusu:
        <br>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj nazwę części."></asp:RequiredFieldValidator>
        <br>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Czesc] WHERE [Id_czesc] = @Id_czesc" InsertCommand="INSERT INTO [Czesc] ([czesc]) VALUES (@czesc)" SelectCommand="SELECT * FROM [Czesc]" UpdateCommand="UPDATE [Czesc] SET [czesc] = @czesc WHERE [Id_czesc] = @Id_czesc">
            <DeleteParameters>
                <asp:Parameter Name="Id_czesc" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="czesc" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="czesc" Type="String" />
                <asp:Parameter Name="Id_czesc" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
