using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace Login_related_details
{

    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
            con.Open();
            string str = "select count(*) from BCA where User_Name='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(str, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                String pswd = "select Password from BCA where User_Name='" + TextBox1.Text + "'";
                SqlCommand PassCom = new SqlCommand(pswd, con);
                string passwd = PassCom.ExecuteScalar().ToString().Replace(" ", "");
                if (passwd == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("Password is Correct");
                    Response.Redirect("Student.aspx");
                }
                else
                {
                    lb1.Text = "Invalid User Name or Password! Please try again";
                }

            }
            else
            {
                lb1.Text = "User Name or password is not correct";
            }
            con.Close();
        }
    }

}

