<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ContentA_C" ContentPlaceHolderID="ContentPlaceHolderAdminOperation" Runat="Server">
    <div style="height:300px;">
        <table style="width:100%; height:100%; background-color:rgba(159, 129, 129, 0.80);" align="center">
                        <tr align="center">
                            <td colspan="2">
                                <h1>
                                    <asp:Label ID="LabelA_C" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="26pt" ForeColor="#3C0000" Text="ADD CATEGORY"></asp:Label>
                                </h1><hr /></td></tr>
                        
                        <tr align="center">
                            <td><asp:Label ID="LabelCategory" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Category:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxCategory" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorC" runat="server" ControlToValidate="TextBoxCategory" ErrorMessage="Required ! Please Provide Category !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td></tr>
                        
                        <tr align="center">
                            <td colspan="2">
                                <asp:Label ID="LabelAddMessage" runat="server"></asp:Label><br />
                                <asp:Button runat="server" BackColor="#E0B3FF" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="22pt" Text="Add" Width="172px" ID="ButtonA_C" OnClick="ButtonA_C_Click" /></td></tr>
                    </table>
        <asp:ValidationSummary ID="ValidationSummaryS_U" runat="server" ForeColor="#CE0000" DisplayMode="SingleParagraph" BackColor="Ivory" BorderStyle="None" Width="100%" />
    </div>
</asp:Content>

