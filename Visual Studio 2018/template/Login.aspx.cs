using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            txt_generate.Text = genCap();
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString); /*this is the connection string to retrieve the data for the username and password to login from the registration data*/
        conn.Open();
        string checkuser = "select count(*) from [Table] where UserName='" + TextBoxUserName.Text + "'"; /*this is where any of the username has to be the same from the database when the user is regisrtered. The username text box validates the funtion of the username informtion*/
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "select password from [Table] where UserName='" + TextBoxUserName.Text + "'"; /*this is where any of the password has to be the same from the database when the user is regisrtered. The password text box validates the funtion of the password informtion*/
            SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
            string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
            //if (password == TextBoxPassword.Text) && (txt_check.Text == txt_generate.Text))
            if (password == TextBoxPassword.Text && txt_check.Text == txt_generate.Text)

            {
                Session["New"] = TextBoxUserName.Text;
                Response.Write("Password is correct");
                Response.Redirect("WomanDresses.aspx");
                //once the the user is logged in the product page will display
            }
        else
        {
            Response.Write("Password is Not correct"); /*this is This validation outcome is when the password is incorrect*/
        }
            //Response.Write("User already Exists");
        }
        else
        {
            Response.Write("Username is Not correct"); /*this is This validation outcome is when the username is incorrect*/
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        txt_generate.Text = genCap(); /*this is for the generate button , which is The refresh button for the user to get another set of characters*/
    }
    string genCap()
    {
        String captcha;

        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; /*this is where all of these characters are in the capcha part for login*/
        var stringChars = new char[8];
        var random = new Random();

        for (int i = 0; i < stringChars.Length; i++)
        {
            stringChars[i] = chars[random.Next(chars.Length)];
        }

        var finalString = new String(stringChars);
        return finalString;
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Default.aspx"); /*this directs the user to the home page of the website*/
    }
}