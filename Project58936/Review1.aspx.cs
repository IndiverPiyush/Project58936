using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class Review1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=10.3.117.14;Initial Catalog=DAMS;Integrated Security=True;Pooling=False");
            con.Open();
            SqlCommand lastApptNo = new SqlCommand("select top 1 * from APPOINTMENT order by APPT_NO desc", con);
            SqlDataReader dr = lastApptNo.ExecuteReader();
            while (dr.Read())
            {
                Label3.Text = dr["APPT_NO"].ToString();
                Label5.Text = Session["userName"].ToString();
                Label7.Text = dr["APPT_DATE"].ToString();
                Label9.Text = dr["APPT_TIME"].ToString();
                Label11.Text = Session["docName"].ToString();
                Label13.Text = Session["categoryName"].ToString();
                Label15.Text = dr["APPT_FEES"].ToString();

            }
            dr.Close();
            con.Close();

            
      
                

            
        }
    }
}