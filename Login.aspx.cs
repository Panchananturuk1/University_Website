using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
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
                Response.Redirect("Regis_Data.aspx");
            }
            else
            {
                Response.Write("Please Enter the Correct Password");
            }

        }
        else
        {
            Response.Write("User Name is Not Correct");
        }
        con.Close();
    }
}