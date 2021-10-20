using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class AddWalletBalanace : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DAMS"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int user = int.Parse(Session["user_no"].ToString());
            int wal1 = int.Parse(Session["user_wallet"].ToString());
            int wal = wal1 + int.Parse(TextBox1.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("update Patient set user_wallet=@wal where user_no=@user ", con);
            cmd.Parameters.Add("@user", user);

            cmd.Parameters.Add("@wal", wal);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}