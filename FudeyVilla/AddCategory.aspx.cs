using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (!IsPostBack)
        {
            if(Session["Admin"]==null)
            {
                Response.Redirect("SignIn.aspx");
            }
        }
    }

    protected void ButtonA_C_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;");
        SqlDataAdapter sda = new SqlDataAdapter("select * from Categories where Category='" + TextBoxCategory.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count==1)
        {
            Response.Write("<script>alert('Category Already Added!');</script>");
            TextBoxCategory.Text = null;
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insert into Categories (Category) values('" + TextBoxCategory.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();

            con.Close();
            
            
            Response.Write("<script>alert('One Category Added');</script>");
            TextBoxCategory.Text = null;
        }
        
    }
}