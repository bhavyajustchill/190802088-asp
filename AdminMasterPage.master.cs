using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class AdminMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            string email1 = Session["email"].ToString();
            SqlCommand cmd = new SqlCommand("SELECT [fullname] FROM [users] WHERE [email] = @email", con);
            cmd.Parameters.AddWithValue("@email", email1);
            con.Open();
            string fullname = cmd.ExecuteScalar().ToString();
            Literal1.Text = fullname;
            Literal2.Text = email1;
        }
    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["email"] = null;
        Response.Redirect("~/Login.aspx");
    }
}

