<%@ Page Title="Dodaj dział" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_dzial.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_dzial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Dział:<br><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Podaj dział."></asp:RequiredFieldValidator>
        <br>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" OnClick="Button1_Click" Text="Dodaj" Width="90px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Dzial] WHERE [Id_dzial] = @Id_dzial" InsertCommand="INSERT INTO [Dzial] ([dzial]) VALUES (@dzial)" SelectCommand="SELECT * FROM [Dzial]" UpdateCommand="UPDATE [Dzial] SET [dzial] = @dzial WHERE [Id_dzial] = @Id_dzial">
            <DeleteParameters>
                <asp:Parameter Name="Id_dzial" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="dzial" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dzial" Type="String" />
                <asp:Parameter Name="Id_dzial" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
