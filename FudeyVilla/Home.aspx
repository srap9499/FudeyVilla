<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ContentArea" ContentPlaceHolderID="ContentPlaceHolderDisplay" Runat="Server">
    <div style="width:100%; background-color:rgba(88, 43, 43, 0.80); ">
                    <table style="height:30px; width:100%;">
                        <tr>
                            <td align="left">
                                <asp:TextBox ID="TextBoxSearch" runat="server" TextMode="Search"></asp:TextBox>
                                <asp:Button ID="ButtonSearch" runat="server" Text="SEARCH" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#7C6F57" OnClick="ButtonSearch_Click"  />
                            </td>
                            <td align="right">
                                <asp:Label ID="LabelDisplayStatus" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#E7E3DC" ></asp:Label>
                                <asp:Button ID="ButtonSignIn" runat="server" Text="SIGN IN" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#7C6F57" OnClick="ButtonSignIn_Click"  />
                                <asp:Button ID="ButtonSignOut" runat="server" Text="SIGN OUT" BackColor="#F7F6F3" BorderStyle="None" Font-Bold="True" Font-Italic="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#7C6F57" OnClick="ButtonSignOut_Click"  />
                            </td>
                        </tr>
                    </table>
    <asp:DataList ID="DataListContent" runat="server" DataSourceID="SqlDataSourceContent" RepeatLayout="Flow">
        <ItemTemplate>
            <table style="background-color:#c7c6ca; width:80%; " align="center" >
                <tr align="center">
                    <td>
                        <asp:Image ID="ImageRImage" runat="server" ImageUrl='<%# Eval("RImage") %>' Width="625px" />
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <table>
                            <tr align="center">
                                <td>
                                    <asp:Label ID="RNameLabel" runat="server" Class="toCaps" Font-Bold="True" Font-Italic="True" Font-Size="18pt" BackColor="#86b09e" ForeColor="#3C0000" Width="625px" Text='<%# Eval("RName") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        
                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <table style="width:625px;" align="center">
                            <tr align="left">
                                <td>
                                    <asp:Label ID="RCategoryLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt"  ForeColor="#3C0000" Text='<%# Eval("RCategory") %>' ></asp:Label>
                                </td>
                            </tr>
                        </table>

                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <table style="width:625px;" align="center">
                            <tr align="left">
                                <td>
                                    <asp:Label ID="IngredientsLabel" runat="server" Text="Ingredients:" Font-Bold="True" Font-Italic="True" Font-Size="16pt"  ForeColor="#3C0000" ></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td>
                                    <asp:TextBox ID="TextBoxIngredients" runat="server" Text='<%# Eval("Ingredients") %>' BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="14pt" Width="625px" MaxLength="1000"  Rows="3" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        
                        

                    </td>
                </tr>
                <tr align="center">
                    <td>
                        <table style="width:625px;" align="center">
                            <tr align="left">
                                <td>
                                    <asp:Label ID="RecipeDLabel" runat="server" Text="Recipe Description:" Font-Bold="True" Font-Italic="True" Font-Size="16pt"  ForeColor="#3C0000" ></asp:Label>
                                </td>
                            </tr>
                            <tr align="left">
                                <td>
                                    <asp:TextBox ID="TextBoxRecipeD" runat="server" Text='<%# Eval("RecipeD") %>' BackColor="#A4C1C1" BorderStyle="None" Font-Italic="True" Font-Size="14pt" Width="625px" MaxLength="6000" Rows="5" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        
                        
                        <br />
                    </td>
                </tr>
            </table>


        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceContent" runat="server" ConnectionString="<%$ ConnectionStrings:FudeyVillaDBConnectionString %>" SelectCommand="SELECT * FROM [Recipes]"></asp:SqlDataSource>

</div>
</asp:Content>

