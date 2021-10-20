using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Project58936
{
    public partial class DoctorReg : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=10.3.117.14;Initial Catalog=DAMS;Integrated Security=True;Pooling=False");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            if (!IsPostBack)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from category", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "category");
                DropDownList1.DataSource = ds;
                DropDownList1.DataMember = "category";
                DropDownList1.DataTextField = "category_name";
                DropDownList1.DataValueField = "category_no";
                DropDownList1.DataBind();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into doctor values(@DOCTOR_NAME,@DOCTOR_MOBILE,@DOCTOR_EMAIL,@DOCTOR_CATEGORY_NO,@DOCTR_FEES,@DOCTOR_PASSWORD)", con);
            cmd.Parameters.Add("@DOCTOR_NAME", TextBox1.Text);
            cmd.Parameters.Add("@DOCTOR_MOBILE", TextBox2.Text);
            cmd.Parameters.Add("@DOCTOR_EMAIL", TextBox6.Text);
            cmd.Parameters.Add("@DOCTOR_CATEGORY_NO", int.Parse(DropDownList1.SelectedItem.Value));
            cmd.Parameters.Add("@DOCTR_FEES", decimal.Parse(TextBox3.Text));
            cmd.Parameters.Add("@DOCTOR_PASSWORD", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label9.Text = "Record saved successfully";
            Response.Redirect("ADMIN.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ADMIN.aspx");
        }
    }
}