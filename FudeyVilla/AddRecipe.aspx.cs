using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AddRecipe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            if (Session["Admin"] == null)
            {
                Response.Redirect("SignIn.aspx");
            }
        }
    }

    protected void ButtonA_R_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;");
        if (FileUploadAddImage.HasFile)
        {
            String fname = FileUploadAddImage.PostedFile.FileName;
            String fpath = "Images/AddRecipes/" + FileUploadAddImage.FileName;
            FileUploadAddImage.PostedFile.SaveAs(Server.MapPath("~/Images/AddRecipes/") + fname);


            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Recipes (RCategory,RName,RImage,Ingredients,RecipeD) values(@RCategory,@RName,@RImage,@Ingredients,@RecipeD)", con);
            cmd.Parameters.AddWithValue("@RCategory", DropDownListCategory.Text);
            cmd.Parameters.AddWithValue("@RName", TextBoxR_N.Text);
            cmd.Parameters.AddWithValue("@RImage", fpath);
            cmd.Parameters.AddWithValue("@Ingredients", TextBoxIngredients.Text);
            cmd.Parameters.AddWithValue("@RecipeD", TextBoxR_D.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('One Recipe added Successfully!');</script>");
        }
    }
}