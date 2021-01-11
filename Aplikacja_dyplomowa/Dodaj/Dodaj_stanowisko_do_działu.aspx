<%@ Page Title="Dodaj stanowisko do działu" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_stanowisko_do_działu.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_stanowisko_do_działu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Dzial] ORDER BY [dzial]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stanowisko] ORDER BY [Stanowisko]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Dzial_stanowisko] WHERE [Id_dzial_stanowisko] = @Id_dzial_stanowisko" InsertCommand="INSERT INTO [Dzial_stanowisko] ([Id_dzial], [Id_stanowisko]) VALUES (@Id_dzial, @Id_stanowisko)" SelectCommand="SELECT * FROM [Dzial_stanowisko]" UpdateCommand="UPDATE [Dzial_stanowisko] SET [Id_dzial] = @Id_dzial, [Id_stanowisko] = @Id_stanowisko WHERE [Id_dzial_stanowisko] = @Id_dzial_stanowisko">
            <DeleteParameters>
                <asp:Parameter Name="Id_dzial_stanowisko" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id_dzial" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="DropDownList2" Name="Id_stanowisko" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id_dzial" Type="Int32" />
                <asp:Parameter Name="Id_stanowisko" Type="Int32" />
                <asp:Parameter Name="Id_dzial_stanowisko" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        Dział:
        <br>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="dzial" DataValueField="Id_dzial" AutoPostBack="True">
        </asp:DropDownList>
        <br>
        Stanowisko:
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Stanowisko" DataValueField="Id_stanowisko">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="przypisz stanowisko do działu" />
        <br>
    </div>
</asp:Content>
