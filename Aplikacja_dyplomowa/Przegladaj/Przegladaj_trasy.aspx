<%@ Page Title="Przeglądaj trasę" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Przegladaj_trasy.aspx.cs" Inherits="Aplikacja_dyplomowa.Przeglądaj.Przegladaj_trasy" %>
<asp:Content ID="Trasy" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>Wybierz linię:
        <br><asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="nazwa_linii" DataValueField="Id_linie_autobusowe" AutoPostBack="True">
    </asp:DropDownList>
        <br>
    Trasa:
      <br>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" Width="440px" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="Brak danych" AutoGenerateEditButton="True" DataKeyNames="Id_linie_autobusowe,Expr1">
        <AlternatingRowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="trasa" HeaderText="Trasa" SortExpression="trasa" />
            <asp:BoundField DataField="trasa_alternatywna" HeaderText="Trasa alternatywna" SortExpression="trasa_alternatywna" />
            <asp:BoundField DataField="Id_trasa" HeaderText="Id_trasa" SortExpression="Id_trasa" Visible="False" />
            <asp:BoundField DataField="Id_linie_autobusowe" HeaderText="Id_linie_autobusowe" InsertVisible="False" ReadOnly="True" SortExpression="Id_linie_autobusowe" Visible="False" />
            <asp:BoundField DataField="nazwa_linii" HeaderText="nazwa_linii" SortExpression="nazwa_linii" Visible="False" />
            <asp:BoundField DataField="Expr1" HeaderText="Expr1" InsertVisible="False" ReadOnly="True" SortExpression="Expr1" Visible="False" />
        </Columns>
        <EditRowStyle Font-Names="Arial" Font-Size="Medium" BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView></div> 
        <a>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Linie_autobusowe] ORDER BY [Id_linie_autobusowe]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Trasa.trasa, Trasa.trasa_alternatywna, Linie_autobusowe.Id_trasa, Linie_autobusowe.Id_linie_autobusowe, Linie_autobusowe.nazwa_linii, Trasa.Id_trasa AS Expr1 FROM Trasa INNER JOIN Linie_autobusowe ON Trasa.Id_trasa = Linie_autobusowe.Id_trasa

Where linie_autobusowe.id_trasa = @trasa">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="trasa" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    </a>
</asp:Content>
