using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Delete : System.Web.UI.Page
{







    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            con.Open();
            string str = "delete from monu where UserName='" + TextBoxDelt.Text + "'";
            SqlCommand com = new SqlCommand(str, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Sucessfully Deleted:");
            Response.Redirect("Manager.aspx");
        }
    }

}