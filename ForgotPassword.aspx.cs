using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ForgotPassword : System.Web.UI.Page
{
    SqlConnection con;
    //ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString1 %>" 
    //DeleteCommand="DELETE FROM [users] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [users] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)" 
    //SelectCommand="SELECT [id], [fullname], [email], [password] FROM [users]" 
    //UpdateCommand="UPDATE [users] SET [fullname] = @fullname, [email] = @email, [password] = @password WHERE [id] = @id"
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        if (!IsPostBack)
        {
            dropDownBind();
        }
    }

    void dropDownBind()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [fullname], [email], [password] FROM [users]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "email";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Select an Email address", "0"));
        DropDownList1.Items[0].Selected = true;
        DropDownList1.Items[0].Attributes["disabled"] = "disabled";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("UPDATE [users] SET [password] = @password WHERE [email] = @email", con);
        cmd.Parameters.AddWithValue("@password", TextBox1.Text);
        cmd.Parameters.AddWithValue("@email", DropDownList1.SelectedItem.ToString());

        con.Open();
        int s = cmd.ExecuteNonQuery();
        con.Close();

        if (s == 1)
        {
            string message = "Password Reset Successful!";
            string url = "Login.aspx";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
        }
        else
        {
            Response.Write("<script>alert('Error! The Password was not Reset!');</script>");
        }
    }
}