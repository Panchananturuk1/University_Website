using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        con.Open();
        string str = "select count(*) from monu where UserName='" + TextBoxUSN.Text + "'";
        SqlCommand com = new SqlCommand(str, con);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            String pswd = "select Password from monu where UserName='" + TextBoxUSN.Text + "'";
            SqlCommand PassCom = new SqlCommand(pswd, con);
            string passwd = PassCom.ExecuteScalar().ToString().Replace(" ", "");
            if (passwd == TextBoxPSW.Text)
            {
                Session["New"] = TextBoxUSN.Text;
                Response.Write("Password is Correct");
                Response.Redirect("User.aspx");
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
