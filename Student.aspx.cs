using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string str = "select count(*) from student where Name='" + TextBoxNAME.Text + "'";
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

    protected void Button4_Click(object sender, EventArgs e)
    {

        try
        {

            Guid newGUID = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string ins = "insert into student(Id,Name,Gender,DOB,Category,Email,MobileNo,City,State,Rollno,Amount,Program,Semester) values(@Id ,@name ,@gender ,@dob ,@category ,@email ,@mobileno ,@city ,@state ,@rollno ,@amount ,@program ,@semester)";
            SqlCommand com = new SqlCommand(ins, con);

            com.Parameters.AddWithValue("@Id", newGUID.ToString());
            com.Parameters.AddWithValue("@name", TextBoxNAME.Text);
            com.Parameters.AddWithValue("@gender", DropDownGender.SelectedItem.ToString());
            com.Parameters.AddWithValue("@dob", TextBox2.Text);
            com.Parameters.AddWithValue("@category", DropDownCategory.SelectedItem.ToString());
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@mobileno", TextBoxMobile.Text);
            com.Parameters.AddWithValue("@city", TextBoxCity.Text);
            com.Parameters.AddWithValue("@state", DropDownState.SelectedItem.ToString());
            com.Parameters.AddWithValue("@rollno", TextBox_Rollno.Text);
            com.Parameters.AddWithValue("@amount", TextBox_Amt.Text);
            com.Parameters.AddWithValue("@program", Drop_Programs.SelectedItem.ToString());
            com.Parameters.AddWithValue("@semester", Drop_semester.SelectedItem.ToString());
            
            


            com.ExecuteNonQuery();
            Response.Redirect("MyStudentData.aspx");
            Response.Write("Registration is Sucessfull");


            con.Close();
        }


        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }


    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("StudentData.aspx");
    }
}