<%@ Page Title="" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Odzyskaj_haslo.aspx.cs" Inherits="Aplikacja_dyplomowa.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;"><asp:PasswordRecovery ID="PasswordRecovery1" runat="server">
        <SubmitButtonStyle Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#1979A9" />
        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2">Nie pamiętasz hasła?</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">Wprowadź nazwę użytkownika, aby otrzymać hasło.</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nazwa użytkownika:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="Pole Nazwa użytkownika jest wymagane." ToolTip="Pole Nazwa użytkownika jest wymagane." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">Ups, coś poszło nie tak :(</td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Font-Bold="True" Font-Names="Arial" Font-Size="Small" ForeColor="#1979A9" Text="Prześlij" ValidationGroup="PasswordRecovery1" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>
    </asp:PasswordRecovery></div>
</asp:Content>
