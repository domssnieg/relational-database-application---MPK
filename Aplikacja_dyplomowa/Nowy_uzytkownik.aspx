<%@ Page Title="" Language="C#" MasterPageFile="~/Wzorcowa.Master" AutoEventWireup="true" CodeBehind="Nowy_uzytkownik.aspx.cs" Inherits="Aplikacja_dyplomowa.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <CreateUserButtonStyle Font-Bold="True" Font-Names="Arial" ForeColor="#1979A9" />
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
