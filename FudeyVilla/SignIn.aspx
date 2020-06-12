<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .SignIncss {
            height: 500px;
            width: 500px;
                        
        }
    </style>
</head>
<body style="background-image: url('/Images/bodySignInbg.jpg'); background-size:cover; background-attachment:fixed;">
    <form id="SignIn" runat="server">
        <div>
            <table class="SignIncss" align="center" title="SignIn">
                <tr>
                    <td colspan="2" align="Center">
                        <asp:Label ID="LabelSignIn" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="26pt" ForeColor="#5F1F3F" Text="Sign In"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="E_mailId" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#660033" Text="E-mail Id:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxE_mail" runat="server" BackColor="#FFCCCC" BorderStyle="None" Font-Italic="True" Font-Size="12pt" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorE_mail" runat="server" ControlToValidate="TextBoxE_mail" ErrorMessage="Required ! Please Enter E-mail Id !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Password" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#660033" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxPass" runat="server" BackColor="#FFCCCC" BorderStyle="None" Font-Italic="True" Font-Size="12pt" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Required ! Please Enter Password !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button runat="server" BackColor="#E0B3FF" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Sign In" Width="144px" ID="ButtonSignIn" OnClick="ButtonSignIn_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LabelMessage" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="12pt"></asp:Label>
&nbsp;<asp:LinkButton ID="CreateAccount" runat="server" BorderStyle="None" Font-Italic="True" Font-Size="12pt" Font-Bold="True" OnClick="CreateAccount_Click" CausesValidation="False">Don&#39;t have an Account? Sign Up!</asp:LinkButton>
                        &nbsp;</td>
                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummaryS_U" runat="server" ForeColor="#CE0000" DisplayMode="SingleParagraph" BackColor="Ivory" BorderStyle="None" Width="100%" />
        </div>
    </form>
</body>
</html>
