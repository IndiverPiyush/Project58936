using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Project58936
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CATEGORY values(@CATEGORY_NAME,@CATEGORY_DURATION,@CATEGORY_MAXAPPT)", con);
            cmd.Parameters.Add("@CATEGORY_NAME", TextBox1.Text);
            cmd.Parameters.Add("@CATEGORY_DURATION", TextBox2.Text);
            cmd.Parameters.Add("@CATEGORY_MAXAPPT", int.Parse(TextBox3.Text));
            cmd.ExecuteNonQuery();
            con.Close();
            Label8.Text = "Category Entered Successfully!!!!";

        }


    }
}