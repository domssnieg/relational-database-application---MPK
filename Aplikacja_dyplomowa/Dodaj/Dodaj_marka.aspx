<%@ Page Title="Dodaj markę" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_marka.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.dadaj_marka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Marka] WHERE [id_marka] = @id_marka" InsertCommand="INSERT INTO [Marka] ([marka]) VALUES (@marka)" SelectCommand="SELECT * FROM [Marka]" UpdateCommand="UPDATE [Marka] SET [marka] = @marka WHERE [id_marka] = @id_marka">
        <DeleteParameters>
            <asp:Parameter Name="id_marka" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="marka" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="marka" Type="String" />
            <asp:Parameter Name="id_marka" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
        Marka:
        <br>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Dodaj markę." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
<br>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" Width="90px" />
</p>
</asp:Content>
