<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UpdateRecipe.aspx.cs" Inherits="UpdateRecipe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="ContentU_R" ContentPlaceHolderID="ContentPlaceHolderAdminOperation" Runat="Server">
    <div align="center" class="navbar" style="width:100%; height:100%; background-color:lavenderblush; ">

        <asp:GridView ID="GridViewU_R" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" AllowPaging="True" EmptyDataText="No Resipes to Display !" OnPageIndexChanging="GridViewU_R_PageIndexChanging" OnRowCancelingEdit="GridViewU_R_RowCancelingEdit" OnRowDeleting="GridViewU_R_RowDeleting" OnRowEditing="GridViewU_R_RowEditing" OnRowUpdated="Page_Load" OnRowUpdating="GridViewU_R_RowUpdating" PageSize="5"  >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="LabelId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownListEditCategory" runat="server" DataSourceID="SqlDataSourceSort1" DataTextField="Category" DataValueField="Category" SelectedValue='<%# Eval("Rcategory") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelCategory" runat="server" Text='<%# Eval("Rcategory") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Recipe Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxEditR_N" runat="server" Text='<%# Eval("RName") %>' Width="200px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="LabelRName" runat="server" Text='<%# Eval("RName") %>' Width="200px"></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("RImage") %>' Width="100px" />
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Ingredients">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxEditIngredients" runat="server" Text='<%# Eval("Ingredients") %>' MaxLength="1000" Rows="2" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBoxIngredients" runat="server" MaxLength="1000" ReadOnly="True" Rows="2" Text='<%# Eval("Ingredients") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxEditDescription" runat="server" MaxLength="6000" Rows="3" Text='<%# Eval("RecipeD") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:TextBox ID="TextBoxDescription" runat="server" MaxLength="6000" ReadOnly="True" Rows="3" Text='<%# Eval("RecipeD") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>
                <asp:CommandField HeaderText="Operation" ShowEditButton="True" ShowDeleteButton="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

        </asp:GridView>
    </div>
</asp:Content>

