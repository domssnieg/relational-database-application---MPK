<%@ Page Title="Dodaj model" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="dodaj_model.aspx.cs" Inherits="Aplikacja_dyplomowa.Dodaj.dodaj_model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Marka] ORDER BY [marka]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Model] WHERE [Id_model] = @Id_model" InsertCommand="INSERT INTO [Model] ([id_marka], [model]) VALUES (@id_marka, @model)" SelectCommand="SELECT * FROM [Model]" UpdateCommand="UPDATE [Model] SET [id_marka] = @id_marka, [model] = @model WHERE [Id_model] = @Id_model">
            <DeleteParameters>
                <asp:Parameter Name="Id_model" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="id_marka" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="model" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_marka" Type="Int32" />
                <asp:Parameter Name="model" Type="String" />
                <asp:Parameter Name="Id_model" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        Marka:
        <br>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="marka" DataValueField="id_marka">
        </asp:DropDownList>
        <br>
        Model:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Dodaj model." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
    <br>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Dodaj" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#1979A9" Height="40px" Width="90px" />
    </p>
</asp:Content>
