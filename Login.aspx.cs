using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [users] WHERE [email] = @email AND [password] = @password", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
            con.Open();
            int s = (int)cmd.ExecuteScalar();
            if (s >= 1)
            {
                if (CheckBox1.Checked)
                {
                    Response.Cookies["email"].Value = TextBox1.Text;
                    Response.Cookies["password"].Value = TextBox2.Text;
                    Response.Cookies["email"].Expires = DateTime.Now.AddDays(30);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(30); 
                    Session["email"] = TextBox1.Text;
                }
                else
                {
                    Response.Cookies["email"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                    Session["email"] = TextBox1.Text;
                }
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Literal1.Text = string.Empty;
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                Literal1.Text = "Error! Invalid Login Details!";
            }
            con.Close();
        }
        catch (SqlException ex)
        {
            Response.Write("<script> alert('Error Message: " + ex.Message + " and Error Code:" + ex.ErrorCode + "');</script>");
        }
    }
}