using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from [Table] where UserName='" + TextBoxUN.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already Exists");
            }
            conn.Close();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            //Global Unique Identifier//

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into [Table] (ID,UserName,Email,Password,Gender) values (@ID, @Uname, @email, @password, @gender)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEMAIL.Text);
            com.Parameters.AddWithValue("@password", TextBoxPASS.Text);
            com.Parameters.AddWithValue("@gender", DropDownListGENDER.SelectedItem.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("Adminstrator.aspx");
            Response.Write("Registration is successful");
            conn.Close();
            //Response.Write("Your Registration is successful");
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}