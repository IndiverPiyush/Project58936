using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DAMS"].ConnectionString);
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into PATIENT values(@USER_NAME,@USER_MOBILE,@USER_EMAIL,@USER_DOB,@USER_WALLET,@USER_PASSWORD)", con);
            cmd.Parameters.Add("@USER_NAME", TextBox1.Text);
            cmd.Parameters.Add("@USER_MOBILE", TextBox5.Text);
            cmd.Parameters.Add("@USER_EMAIL", TextBox2.Text);
            cmd.Parameters.Add("@USER_DOB", TextBox4.Text);
            cmd.Parameters.Add("@USER_WALLET", decimal.Parse(TextBox6.Text));
            cmd.Parameters.Add("@USER_PASSWORD", TextBox3.Text);
            cmd.ExecuteNonQuery();
            
            Label8.Text = "Usesr Registered Successfully!!!!";
            con.Close();
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}