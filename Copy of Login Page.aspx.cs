using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
namespace Login_related_details
{
    public partial class Login : System.Web.UI.Page
    {



        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString5"].ConnectionString;
        SqlCommand com;
        SqlDataAdapter sqlda;
        string str;
        DataTable dt;
        int RowCount;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);
            con.Open();
            string str = "select count(*) from mn where UserName='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(str, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                String pswd = "select Password from mn where UserName='" + TextBox1.Text + "'";
                SqlCommand PassCom = new SqlCommand(pswd, con);
                string passwd = PassCom.ExecuteScalar().ToString().Replace(" ", "");
                if (passwd == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("Password is Correct");
                    Response.Redirect("Details.aspx");
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
}
