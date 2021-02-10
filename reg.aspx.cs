using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            string str= "select count(*) from monu where UserName='"+TextBoxUN.Text+"'";
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
            Guid newGUID = Guid.NewGuid();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
            con.Open();
            string ins = "insert into monu(Id,UserName,Email,Password,Country,First_Name,Last_Name) values(@Id ,@Uname ,@email ,@Password ,@Country ,@first_name ,@last_name)";
            SqlCommand com = new SqlCommand(ins, con);

            com.Parameters.AddWithValue("@Id", newGUID.ToString());
            com.Parameters.AddWithValue("@first_name", TextBoxFname.Text);
            com.Parameters.AddWithValue("@last_name", TextBoxLname.Text);
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEMAIL.Text);
            com.Parameters.AddWithValue("@Password", TextBoxPW.Text);
            com.Parameters.AddWithValue("@Country", DropDownListCN.SelectedItem.ToString());


            com.ExecuteNonQuery();
            Response.Redirect("MyMnager.aspx");
            Response.Write("Registration is Sucessfull");


            con.Close();
        }

            
        catch (Exception ex)
        {
            Response.Write("Error:" +ex.ToString());
        }

    }

    protected void DropDownListCN_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}