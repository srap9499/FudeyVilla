using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Admin"]!=null || Session["UserId"]!=null)
        {
            if(Session["Admin"]!=null)
                LabelDisplayStatus.Text = "Signed In As: " + Session["Admin"].ToString();
            else if(Session["UserId"] != null)
                LabelDisplayStatus.Text = "Signed In As: " + Session["UserId"].ToString();
            ButtonSignIn.Visible = false;
            ButtonSignOut.Visible = true;
            DataListContent.Visible = true;
            TextBoxSearch.Visible = true;
            ButtonSearch.Visible = true;
        }
        else
        {
            LabelDisplayStatus.Text = "Hello you can Sign In Here:";
            ButtonSignIn.Visible = true;
            ButtonSignOut.Visible = false;
            TextBoxSearch.Visible = false;
            ButtonSearch.Visible = false;
            DataListContent.Visible = false;

        }
    }

    protected void ButtonSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }

    protected void ButtonSignOut_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Home.aspx");
        LabelDisplayStatus.Text = "You Successfully Signed Out!";
        ButtonSignIn.Visible = true;
        ButtonSignOut.Visible = false;
    }

    protected void ButtonSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        SqlDataAdapter sda = new SqlDataAdapter("Select * from Recipes where (RCategory like '%"+TextBoxSearch.Text+"%') or (RName like '%" + TextBoxSearch.Text + "%') order by RName asc", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataListContent.DataSourceID = null;
        DataListContent.DataSource = dt;
        DataListContent.DataBind();
    }
}