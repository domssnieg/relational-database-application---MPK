<%@ Page Title="Dodaj linię" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_linie.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_linie" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <p>Nazwa linii:
        <br>
        <asp:TextBox ID="nazwa_linii" runat="server" OnTextChanged="TextBox1_TextChanged" Font-Names="Arial" Height="22px" Width="129px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nazwa_linii" ErrorMessage="Wprowadź nazwę linii."></asp:RequiredFieldValidator>
    </p>
        <br>
        <p>Trasa:
            <br>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="trasa" DataValueField="Id_trasa" AutoPostBack="True">
            </asp:DropDownList><br>
        </p>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Names="Arial" ForeColor="#1979A9" Text="Dodaj" Height="40px" Width="90px" Font-Size="Large" OnClick="Button1_Click" />
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Linie_autobusowe] WHERE [Id_linie_autobusowe] = @Id_linie_autobusowe" InsertCommand="INSERT INTO [Linie_autobusowe] ([Id_trasa], [nazwa_linii]) VALUES (@Id_trasa, @nazwa_linii)" SelectCommand="SELECT * FROM [Linie_autobusowe]" UpdateCommand="UPDATE [Linie_autobusowe] SET [Id_trasa] = @Id_trasa, [nazwa_linii] = @nazwa_linii WHERE [Id_linie_autobusowe] = @Id_linie_autobusowe">
                <DeleteParameters>
                    <asp:Parameter Name="Id_linie_autobusowe" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Id_trasa" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="nazwa_linii" Name="nazwa_linii" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Id_trasa" Type="Int32" />
                    <asp:Parameter Name="nazwa_linii" Type="String" />
                    <asp:Parameter Name="Id_linie_autobusowe" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Trasa] WHERE [Id_trasa] = @Id_trasa" InsertCommand="INSERT INTO [Trasa] ([trasa], [trasa_alternatywna]) VALUES (@trasa, @trasa_alternatywna)" SelectCommand="SELECT * FROM [Trasa] ORDER BY [trasa]" UpdateCommand="UPDATE [Trasa] SET [trasa] = @trasa, [trasa_alternatywna] = @trasa_alternatywna WHERE [Id_trasa] = @Id_trasa">
                <DeleteParameters>
                    <asp:Parameter Name="Id_trasa" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="trasa" PropertyName="SelectedValue" Type="String" />
                    <asp:Parameter Name="trasa_alternatywna" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="trasa" Type="String" />
                    <asp:Parameter Name="trasa_alternatywna" Type="String" />
                    <asp:Parameter Name="Id_trasa" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </p>
    </div>
</asp:Content>
