using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Sign_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
    }

    protected void ButtonSignIn_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        SqlDataAdapter sda = new SqlDataAdapter("Select * from UserT where Email='" + TextBoxE_mail.Text + "'and Password='" + TextBoxPass.Text+ "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            
            if(TextBoxE_mail.Text=="Admin@fv.com" & TextBoxPass.Text=="fv.com")
            {
                Session["Admin"] = TextBoxE_mail.Text;
                Response.Redirect("AdminHome.aspx");
                
            }
            else
            {
                Session["UserId"] = TextBoxE_mail.Text;
                Response.Redirect("Home.aspx");
                
            }

            
        }
        else
        {
            LabelMessage.Text = "Invalid Details!";
            LabelMessage.ForeColor = System.Drawing.Color.Red;
        }


    }

    protected void CreateAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    
}