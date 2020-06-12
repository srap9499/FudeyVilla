<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AddRecipe.aspx.cs" Inherits="AddRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ContentA_R" ContentPlaceHolderID="ContentPlaceHolderAdminOperation" Runat="Server">
    <div>
<table style="width:100%; height:100%; background-color:rgba(159, 129, 129, 0.80);" align="center">
                        <tr align="center">
                            <td colspan="2">
                                <h1>
                                    <asp:Label ID="LabelA_R" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="26pt" ForeColor="#3C0000" Text="ADD RECIPES"></asp:Label>
                                </h1><hr /></td></tr>
                        <tr align="center">
                            <td><asp:Label ID="Category" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Category:"></asp:Label></td>
                            <td><asp:DropDownList ID="DropDownListCategory" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px" DataSourceID="SqlDataSourceC1" DataTextField="Category" DataValueField="Category" AppendDataBoundItems="True">
                                <asp:ListItem>Select Category</asp:ListItem>

                                </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorC" runat="server" ControlToValidate="DropDownListCategory" ErrorMessage="Required ! Please Select Category !" ForeColor="Red" InitialValue="Select Category">*</asp:RequiredFieldValidator>
                                <asp:SqlDataSource ID="SqlDataSourceC1" runat="server" ConnectionString="<%$ ConnectionStrings:FudeyVillaDBConnectionString %>" SelectCommand="SELECT [Category] FROM [Categories]"></asp:SqlDataSource>
                            </td></tr>
                        <tr align="center">
                            <td><asp:Label ID="RecipeName" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Recipe Name:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxR_N" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorR_N" runat="server" ControlToValidate="TextBoxR_N" ErrorMessage="Required ! Please Provide Recipe Name !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td></tr>
                        <tr align="center">
                            <td><asp:Label ID="AddImage" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Add Image:"></asp:Label></td>
                            <td><asp:FileUpload ID="FileUploadAddImage" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorA_I" runat="server" ControlToValidate="FileUploadAddImage" ErrorMessage="Required ! Please Select Image !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td></tr>
                        <tr align="center">
                            <td><asp:Label ID="Ingredients" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Ingredients:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxIngredients" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px" MaxLength="1000" Rows="3" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_I" runat="server" ControlToValidate="TextBoxIngredients" ErrorMessage="Required ! Please add Ingredients !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td></tr>
                        <tr align="center">
                            <td><asp:Label ID="RecipeD" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="20pt" ForeColor="#3C0000" Text="Recipe Description:"></asp:Label></td>
                            <td><asp:TextBox ID="TextBoxR_D" runat="server" BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="16pt" Width="320px" MaxLength="6000" Rows="6" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorR_D" runat="server" ControlToValidate="TextBoxR_D" ErrorMessage="Required ! Please add Recipe Description !" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td></tr>
                        <tr align="center">
                            <td colspan="2">
                                <asp:Label ID="LabelAddMessage" runat="server"></asp:Label><br />
                                <asp:Button runat="server" BackColor="#E0B3FF" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Size="22pt" Text="Add Recipe" Width="172px" ID="ButtonA_R" OnClick="ButtonA_R_Click" /></td></tr>
                    </table>
        <asp:ValidationSummary ID="ValidationSummaryS_U" runat="server" ForeColor="#CE0000" DisplayMode="SingleParagraph" BackColor="Ivory" BorderStyle="None" Width="100%" />
    </div>
</asp:Content>

