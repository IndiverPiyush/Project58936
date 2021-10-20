using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Visible = false;
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            String sqlquery = "";
            String uname = "";
            String pass = "";
            String dbuname = "";
            String dbpass = "";
            if (RadioButton1.Checked)
            {
                sqlquery = "select user_name, user_password from patient";
                dbuname = "user_name";
                dbpass = "user_password";
            }
            else if (RadioButton2.Checked)
            {
                sqlquery = "select doctor_name, doctor_mobile from doctor";
                dbuname = "doctor_name";
                dbpass = "doctor_mobile";
            }
            else
            {
                sqlquery = "select admin_name, admin_password from admin";
                dbuname = "admin_name";
                dbpass = "admin_password";
            }
            SqlConnection con = new SqlConnection("Data Source=10.3.117.14;Initial Catalog=ShivMVCpractice;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataReader dr = cmd.ExecuteReader();
            uname = TextBox1.Text;
            pass = TextBox2.Text;
            while (dr.Read())
            {
                if (dr[dbuname].ToString() == uname && dr[dbpass].ToString() == pass)
                {
                    Response.Redirect("About.aspx");
                }
                else
                {
                    Label5.Visible = true;
                    Label5.Text = "Your Username or Password is incorrect";
                    Label5.ForeColor = System.Drawing.Color.Red;
                }

            }
            con.Close();
        }
    }
}