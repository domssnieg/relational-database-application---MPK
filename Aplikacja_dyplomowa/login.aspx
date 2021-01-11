<%@ Page Title="" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Aplikacja_dyplomowa.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center; width:20%;"><asp:ScriptManager ID="sm1" runat="server">    
</asp:ScriptManager><asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#5CE1E6" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Medium" ForeColor="#333333" TextLayout="TextOnTop">
        <CheckBoxStyle Font-Names="Arial" Font-Size="Medium" />
        <HyperLinkStyle Font-Names="Arial" Font-Size="Medium" />
        <InstructionTextStyle Font-Italic="True" ForeColor="White" />
            <LayoutTemplate>
                <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                    <tr>
                        <td>
                            <table cellpadding="0">
                                <tr>
                                    <td align="center" style="color:White;background-color:#5CE1E6;font-family:Arial;font-size:Large;font-weight:bold;" valign="middle">Zaloguj</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nazwa użytkownika:</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="UserName" runat="server" Font-Names="Arial" Font-Size="Medium"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Pole Nazwa użytkownika jest wymagane." Font-Size="Medium" ForeColor="Red" ToolTip="Pole Nazwa użytkownika jest wymagane." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Hasło:</asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="Password" runat="server" Font-Names="Arial" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Hasło jest wymagane." Font-Size="Medium" ForeColor="Red" ToolTip="Hasło jest wymagane." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-family:Arial;font-size:Medium;">
                                        <asp:CheckBox ID="RememberMe" runat="server" Text="Zapamiętaj moje dane." />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="color:Red;">Spróbuj ponownie</td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#5CE1E6" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="#5CE1E6" Text="Zaloguj" ValidationGroup="Login1" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        <LoginButtonStyle BackColor="White" BorderColor="#5CE1E6" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial" Font-Size="Medium" ForeColor="#5CE1E6" Font-Bold="True" />
        <TextBoxStyle Font-Size="Medium" Font-Names="Arial" />
        <TitleTextStyle BackColor="#5CE1E6" Font-Bold="True" Font-Size="Large" ForeColor="White" Font-Names="Arial" HorizontalAlign="Center" VerticalAlign="Middle" />
        <ValidatorTextStyle Font-Size="Medium" />
</asp:Login>
    <asp:LinkButton ID="LinkButton1" runat="server" ><a href="Nowy_uzytkownik.aspx" Style="font-size:small; color: #1979a9;">Załóż konto</a></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server"><a href="Odzyskaj_haslo.aspx" Style="font-size:small; color: #1979a9;">Odzyskaj hasło</a></asp:LinkButton>
    </div>
    
</asp:Content>
