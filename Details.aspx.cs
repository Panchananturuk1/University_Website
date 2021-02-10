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
    public partial class Details : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str;
        SqlCommand com;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            str = "select * from student where Name";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            reader.Read();
            lbl_UserName.Text = reader["Name"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader1 = com.ExecuteReader();
            reader1.Read();
            gender.Text = reader1["Gender"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader2 = com.ExecuteReader();
            reader2.Read();
            dob.Text = reader2["DOB"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader3 = com.ExecuteReader();
            reader3.Read();
            category.Text = reader3["Category"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader4 = com.ExecuteReader();
            reader4.Read();
            email.Text = reader4["Email"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader5 = com.ExecuteReader();
            reader5.Read();
            mobileno.Text = reader5["MobileNo"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader6 = com.ExecuteReader();
            reader6.Read();
            city.Text = reader6["City"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader7 = com.ExecuteReader();
            reader7.Read();
            state.Text = reader7["State"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader8 = com.ExecuteReader();
            reader8.Read();
            rollno.Text = reader8["Rollno"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader9 = com.ExecuteReader();
            reader9.Read();
            program.Text = reader9["Program"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader10 = com.ExecuteReader();
            reader10.Read();
            amount.Text = reader10["Amount"].ToString();
            reader.Close();
            con.Close();

            con.Open();
            SqlDataReader reader11 = com.ExecuteReader();
            reader11.Read();
            sem.Text = reader11["Semester"].ToString();
            reader.Close();
            con.Close();



           
           
        }
    }
}
