using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            con.Open();
            string str = "select count(*) from BCA where User_Name= '" + Username.Text + "'";
            SqlCommand com = new SqlCommand(str, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            if (temp == 1)
            {
                Response.Write("User Already Exists");

            }

            con.Close();
        }

        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

   
 
    protected void Button1_Click(object sender, EventArgs e)
    {


          try
        {

           
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            con.Open();
            string ins = "insert into BCA(User_Name,Password,Email) values(@user_name ,@password ,@email )";
            SqlCommand com = new SqlCommand(ins, con);

           
            com.Parameters.AddWithValue("@user_name",Username.Text);
            com.Parameters.AddWithValue("@password",Password.Text);
            com.Parameters.AddWithValue("@email", Email.Text);
           
           




            com.ExecuteNonQuery();
            Response.Redirect("Login Page.aspx");
            Response.Write("Registration is Sucessfull");





            con.Close();
        }


        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }


    }
}