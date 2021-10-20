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
            string sqlquery = "";
            string uname = "";
            string pass = "";
            string dbuname = "";
            string dbpass = "";
            string route = "";
            if (RadioButton1.Checked)
            {
                sqlquery = "select user_mobile, user_password,user_no from patient";
                
                dbuname = "user_mobile";
                dbpass = "user_password";
                route = "CategorySelection.aspx";
            }
            //else if (RadioButton2.Checked)
            //{
            //    sqlquery = "select doctor_mobile, doctor_password from doctor";
            //    dbuname = "doctor_mobile";
            //    dbpass = "doctor_password";
            //    route = "SelectDoctor.aspx";

            //}
            else
            {
                sqlquery = "select admin_name, admin_password from admin";
                dbuname = "admin_name";
                dbpass = "admin_password";
                route = "ADMIN.aspx";

            }
            SqlConnection con = new SqlConnection("Data Source=10.3.117.14;Initial Catalog=DAMS_Yashi;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand cmd = new SqlCommand(sqlquery, con);
            SqlDataReader dr = cmd.ExecuteReader();
            uname = TextBox1.Text;
            pass = TextBox2.Text;
            while (dr.Read())
            {
                if (dr[dbuname].ToString() == uname && dr[dbpass].ToString() == pass)
                {
                    if(uname != "DAMS")
                    {
                        Session["user_no"] = dr["user_no"];
                    }
                    Response.Redirect(route);
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