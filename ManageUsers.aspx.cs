using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    //DeleteCommand="DELETE FROM [users] WHERE [id] = @id" 
    //InsertCommand="INSERT INTO [users] ([fullname], [email], [password]) VALUES (@fullname, @email, @password)" 
    //ProviderName="<%$ ConnectionStrings:DatabaseConnectionString1.ProviderName %>" 
    //SelectCommand="SELECT [id], [fullname], [email], [password] FROM [users]" 
    //UpdateCommand="UPDATE [users] SET [fullname] = @fullname, [email] = @email, [password] = @password WHERE [id] = @id"
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString1"].ConnectionString);
        printData();
    }

    public void printData()
    {
        SqlDataAdapter adpt = new SqlDataAdapter("SELECT [id], [fullname], [email], [password] FROM [users]", con);
        DataTable dt = new DataTable();
        adpt.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}