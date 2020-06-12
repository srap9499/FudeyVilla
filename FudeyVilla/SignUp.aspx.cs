using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class Sign_Up : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        ClickSignIn.Visible = false;
    }

    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {
        SqlConnection con=new SqlConnection(@"Data Source=(localdb)\ProjectsV13;Initial Catalog=FudeyVillaDB;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;");
        SqlDataAdapter sda = new SqlDataAdapter("Select * from UserT where Email='" + TextBoxE_mail.Text + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count==1)
        {
            LabelMessage.Text = "E-mail Id Already registered!";
            LabelMessage.ForeColor = System.Drawing.Color.Red;
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserT values(@UserName,@Email,@Contact,@Gender,@Password)", con);
            cmd.Parameters.AddWithValue("@UserName", TextBoxU_N.Text);
            cmd.Parameters.AddWithValue("@Email", TextBoxE_mail.Text);
            cmd.Parameters.AddWithValue("@Contact", TextBoxC.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownListGender.Text);
            cmd.Parameters.AddWithValue("@Password", TextBoxPass.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            LabelMessage.Text = "You have Successfully Signed Up!";
            LabelMessage.ForeColor = System.Drawing.Color.Green;
            ClickSignIn.Visible = true;
        }
        

    }

    protected void ClickSignIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignIn.aspx");
    }
}