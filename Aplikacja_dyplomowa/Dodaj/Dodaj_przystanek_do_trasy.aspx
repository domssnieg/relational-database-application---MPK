<%@ Page Title="Dodaj przystanek do trasy" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Dodaj_przystanek_do_trasy.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.Dodaj_przystanek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Trasa:
        <br><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="trasa" DataValueField="Id_trasa" AutoPostBack="True">
        </asp:DropDownList>
        <br>
        Nazwa przystanku:
        <br>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_wykaz_przysankow" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id_wykaz_przysankow" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id_wykaz_przysankow" />
                <asp:BoundField DataField="Id_lokalizacja_przystanek" HeaderText="Id" SortExpression="Id_lokalizacja_przystanek" Visible="False" />
                <asp:BoundField DataField="nazwa_przystanku" HeaderText="Nazwa przystanku" SortExpression="nazwa_przystanku" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Trasa]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Wykaz_przystankow] ORDER BY [Id_wykaz_przysankow]">
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [r2] WHERE [Id_trasa] = @Id_trasa AND [Id_wykaz_przysankow] = @Id_wykaz_przysankow" InsertCommand="INSERT INTO [r2] ([Id_trasa], [Id_wykaz_przysankow]) VALUES (@Id_trasa, @Id_wykaz_przysankow)" SelectCommand="SELECT * FROM [r2]">
            <DeleteParameters>
                <asp:Parameter Name="Id_trasa" Type="Int32" />
                <asp:Parameter Name="Id_wykaz_przysankow" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id_trasa" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="Label1" Name="Id_wykaz_przysankow" PropertyName="Text" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
