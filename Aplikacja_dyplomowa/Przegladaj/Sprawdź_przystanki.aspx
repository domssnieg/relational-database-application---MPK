<%@ Page Title="" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Sprawdź_przystanki.aspx.cs" Inherits="Aplikacja_dyplomowa.Przegladaj.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>Wybierz trasę:
        <br>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="trasa" DataValueField="Id_trasa"></asp:DropDownList>
        <br>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Trasa] ORDER BY [trasa]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_trasa,Id_trasa1,Id_wykaz_przysankow,Id_wykaz_przysankow1" DataSourceID="SqlDataSource2" EmptyDataText="Brak danych." ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Id_trasa" HeaderText="Id_trasa" InsertVisible="False" ReadOnly="True" SortExpression="Id_trasa" Visible="False" />
                <asp:BoundField DataField="trasa" HeaderText="trasa" SortExpression="trasa" Visible="False" />
                <asp:BoundField DataField="trasa_alternatywna" HeaderText="trasa_alternatywna" SortExpression="trasa_alternatywna" Visible="False" />
                <asp:BoundField DataField="Id_trasa1" HeaderText="Id_trasa1" ReadOnly="True" SortExpression="Id_trasa1" Visible="False" />
                <asp:BoundField DataField="Id_wykaz_przysankow" HeaderText="Id_wykaz_przysankow" ReadOnly="True" SortExpression="Id_wykaz_przysankow" Visible="False" />
                <asp:BoundField DataField="Id_wykaz_przysankow1" HeaderText="Id_wykaz_przysankow1" InsertVisible="False" ReadOnly="True" SortExpression="Id_wykaz_przysankow1" Visible="False" />
                <asp:BoundField DataField="Id_lokalizacja_przystanek" HeaderText="Id_lokalizacja_przystanek" SortExpression="Id_lokalizacja_przystanek" Visible="False" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Trasa.*, r2.*, Wykaz_przystankow.* FROM Trasa INNER JOIN r2 ON Trasa.Id_trasa = r2.Id_trasa INNER JOIN Wykaz_przystankow ON r2.Id_wykaz_przysankow = Wykaz_przystankow.Id_wykaz_przysankow

Where Trasa.Id_trasa =@trasa">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="trasa" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
