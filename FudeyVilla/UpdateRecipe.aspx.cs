using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class UpdateRecipe : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;");
    int RId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
            ShowRecipe();
        }
    }

    void ShowRecipe()
    {
        
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Recipes",con);

        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridViewU_R.DataSource = dt;
        GridViewU_R.DataBind();

    }

    protected void GridViewU_R_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridViewU_R.PageIndex = e.NewPageIndex;
        ShowRecipe();

    }

    protected void GridViewU_R_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridViewU_R.EditIndex = -1;
        
        ShowRecipe();

    }

    protected void GridViewU_R_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = RId;
        GridViewRow row = (GridViewRow)GridViewU_R.Rows[index];
        Label recipeID = (Label)row.FindControl("LabelId");
        RId = int.Parse(recipeID.Text.ToString());
        
        con.Open();
        SqlCommand cmd = new SqlCommand("Delete from Recipes where Id='" + RId + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        GridViewU_R.EditIndex = -1;
        Response.Write("<script>alert('Recipe has been Deleted Successfully!');</script>");
        
        ShowRecipe();
    }

    protected void GridViewU_R_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewU_R.EditIndex = e.NewEditIndex;
        int index = e.NewEditIndex;
        GridViewRow row = (GridViewRow)GridViewU_R.Rows[index];
        Label recipeID = (Label)row.FindControl("LabelId");
        RId = int.Parse(recipeID.Text.ToString());
        
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Recipes where Id='" + RId + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        GridViewU_R.DataSource = dt;
        GridViewU_R.DataBind();

    }

    protected void GridViewU_R_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int index = RId;
        GridViewRow row = (GridViewRow)GridViewU_R.Rows[index];

            Label recipeID = (Label)row.FindControl("LabelId");
            string rCategory = ((DropDownList)GridViewU_R.Rows[e.RowIndex].Cells[2].FindControl("DropDownListEditCategory")).Text;
            TextBox rName = (TextBox)row.FindControl("TextBoxEditR_N");



            TextBox rIngredients = (TextBox)row.FindControl("TextBoxEditIngredients");
            TextBox dRecipe = (TextBox)row.FindControl("TextBoxEditDescription");

            
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Recipes set RCategory=@1, RName=@2, Ingredients=@4, RecipeD=@5 where Id=@6", con);

            cmd.Parameters.AddWithValue("@1",rCategory);
            cmd.Parameters.AddWithValue("@2",rName.Text);
            cmd.Parameters.AddWithValue("@4",rIngredients.Text);
            cmd.Parameters.AddWithValue("@5",dRecipe.Text);
            cmd.Parameters.AddWithValue("@6",recipeID.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            GridViewU_R.EditIndex = -1;
            Response.Write("<script>alert('Recipe has been Updated Successfully!');</script>");
            
            
            ShowRecipe();

    }

    
}