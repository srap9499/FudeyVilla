<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Sign_Up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .SignUpcss {
            height: 500px;
            width: 500px;
        }
        .auto-style1 {
            width: 144px;
            height: 38px;
        }
    </style>
</head>
<body style="background-image: url('/Images/bodySignUpbg.jpg'); background-size:cover; background-attachment:fixed;">
    <form id="SignUp" runat="server">
        <div>

        <table class="SignUpcss" align="center">
            <tr>
                <td colspan="2" align="center">
                        <asp:Label ID="LabelSignUp" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="26pt" Font-Underline="False" ForeColor="#5F1F3F" Text="Sign Up"></asp:Label>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="User_Name" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="User Name:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxU_N" runat="server" Width="226px" BackColor="#FFD9D9" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorU_N" runat="server" ControlToValidate="TextBoxU_N" ErrorMessage="Required ! Please Enter User Name !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorU_N" runat="server" ControlToValidate="TextBoxU_N" ErrorMessage="User Name Allows only Characters !" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">!</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="E_mailId" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="E-mail Id:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxE_mail" runat="server" Width="226px" BackColor="#FFD9D9" BorderStyle="None" height="18px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorE_mail" runat="server" ControlToValidate="TextBoxE_mail" ErrorMessage="Required ! Please Enter E-mail Id !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorE_mail" runat="server" ControlToValidate="TextBoxE_mail" ErrorMessage="Please Enter a valid E-mail Id !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">!</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Contact" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="Contact:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxC" runat="server" Width="226px" TextMode="Phone" BackColor="#FFD9D9" BorderStyle="None" height="18px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorC" runat="server" ControlToValidate="TextBoxC" ErrorMessage="Required ! Please Enter Contact Number !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorC" runat="server" ControlToValidate="TextBoxC" ErrorMessage="Please Enter a valid 10 Digit Contact Number !" ForeColor="Red" ValidationExpression="^[6-9]{1}[0-9]{9}$">!</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Gender" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="Gender:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListGender" runat="server" Width="226px" BackColor="#FFD9D9" height="18px">
                        <asp:ListItem Value="Select Gender">Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorG" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Required ! Please Gender !" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="Password" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPass" runat="server" Height="18px" TextMode="Password" Width="226px" BackColor="#FFD9D9" BorderStyle="None"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Required ! Please Enter Password !" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Confirm_Password" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="20pt" ForeColor="#660033" Text="Confirm Password:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxCPass" runat="server" TextMode="Password" Width="226px" BackColor="#FFD9D9" BorderStyle="None" height="18px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPass" runat="server" ControlToValidate="TextBoxCPass" ErrorMessage="Required ! Please Confirm Password !" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidatorCPass" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCPass" ErrorMessage="Password does not Match ! both Password must ne Same !" ForeColor="Red">!</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                
                <td colspan="2" align="center">
                    
                    <asp:Label ID="LabelMessage" runat="server" Font-Bold="True" BackColor="#FFFFCC" BorderStyle="None"></asp:Label>
                    <asp:LinkButton ID="ClickSignIn" runat="server" BorderStyle="None" Font-Italic="True" Font-Size="10pt" Font-Bold="True" OnClick="ClickSignIn_Click" Visible="False" CausesValidation="False">Click to Sign In</asp:LinkButton>
                </td>
                
            </tr>
            <tr>
                
                <td colspan="2" align="center">
                    <asp:Button ID="ButtonSignUp" runat="server" BackColor="#E0B3FF" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Sign Up" Width="144px" OnClick="ButtonSignUp_Click"/>
                    &nbsp;
                    <input id="Reset1" type="reset" value="Reset" style="Width:144px; height:38px;"  /></td>
                
            </tr>
        </table>
            <asp:ValidationSummary ID="ValidationSummaryS_U" runat="server" ForeColor="#CE0000" DisplayMode="SingleParagraph" BackColor="Ivory" BorderStyle="None" Width="100%" />
        </div>
    </form>
</body>
</html>
