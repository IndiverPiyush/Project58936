using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class Appointment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=10.3.117.14;Initial Catalog=DAMS_Yashi;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.ToShortDateString();
            Label3.Text = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            Label4.Text = Calendar1.SelectedDate.AddDays(2).ToShortDateString();
            Label5.Text = Calendar1.SelectedDate.AddDays(3).ToShortDateString();
            con.Open();
            //int docno = Session["Doctor"];

            int docno = 501;
            string appdate1 = Calendar1.SelectedDate.ToShortDateString();
            Label6.Text = appdate1;
            SqlCommand cmd = new SqlCommand("select * from [SLOTTABLE] where APP_DATE=@appdate1 and DOCTOR_NO=501", con);
            cmd.Parameters.Add("@appdate1", appdate1);
            //cmd.Parameters.Add("@doc",501);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (dr["SLOT1"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT1"].ToString());
                }
                if (dr["SLOT2"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT2"].ToString());
                }
                if (dr["SLOT3"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT3"].ToString());
                }
                if (dr["SLOT4"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT4"].ToString());
                }
                if (dr["SLOT5"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT5"].ToString());
                }
                if (dr["SLOT6"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT6"].ToString());
                }
                if (dr["SLOT7"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT7"].ToString());
                }
                if (dr["SLOT8"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT8"].ToString());
                }
                if (dr["SLOT9"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT9"].ToString());
                }
                if (dr["SLOT10"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT10"].ToString());
                }
                if (dr["SLOT11"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT11"].ToString());
                }
                if (dr["SLOT12"].ToString() != "BOOKED")
                {
                    DropDownList1.Items.Add(dr["SLOT12"].ToString());
                }
            }
            dr.Close();

            string appdate2 = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            SqlCommand cmd1 = new SqlCommand("select * from [SLOTTABLE] where APP_DATE= @appdate2 and DOCTOR_NO=501", con);
            cmd1.Parameters.Add("@appdate2", appdate2);
            SqlDataReader dr1 = cmd1.ExecuteReader();
            while (dr1.Read())
            {
                if (dr1["SLOT1"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT1"].ToString());
                }
                if (dr1["SLOT2"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT2"].ToString());
                }
                if (dr1["SLOT3"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT3"].ToString());
                }
                if (dr1["SLOT4"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT4"].ToString());
                }
                if (dr1["SLOT5"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT5"].ToString());
                }
                if (dr1["SLOT6"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT6"].ToString());
                }
                if (dr1["SLOT7"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT7"].ToString());
                }
                if (dr1["SLOT8"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT8"].ToString());
                }
                if (dr1["SLOT9"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT9"].ToString());
                }
                if (dr1["SLOT10"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT10"].ToString());
                }
                if (dr1["SLOT11"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT11"].ToString());
                }
                if (dr1["SLOT12"].ToString() != "BOOKED")
                {
                    DropDownList2.Items.Add(dr1["SLOT12"].ToString());
                }
            }
            dr1.Close();

            string appdate3 = Calendar1.SelectedDate.AddDays(2).ToShortDateString();
            SqlCommand cmd2 = new SqlCommand("select * from [SLOTTABLE] where APP_DATE=@appdate3 and DOCTOR_NO=501", con);
            cmd2.Parameters.Add("@appdate3", appdate3);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            while (dr2.Read())
            {
                if (dr2["SLOT1"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT1"].ToString());
                }
                if (dr2["SLOT2"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT2"].ToString());
                }
                if (dr2["SLOT3"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT3"].ToString());
                }
                if (dr2["SLOT4"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT4"].ToString());
                }
                if (dr2["SLOT5"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT5"].ToString());
                }
                if (dr2["SLOT6"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT6"].ToString());
                }
                if (dr2["SLOT7"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT7"].ToString());
                }
                if (dr2["SLOT8"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT8"].ToString());
                }
                if (dr2["SLOT9"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT9"].ToString());
                }
                if (dr2["SLOT10"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT10"].ToString());
                }
                if (dr2["SLOT11"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT11"].ToString());
                }
                if (dr2["SLOT12"].ToString() != "BOOKED")
                {
                    DropDownList3.Items.Add(dr2["SLOT12"].ToString());
                }
            }
            dr2.Close();

            string appdate4 = Calendar1.SelectedDate.AddDays(3).ToShortDateString();
            SqlCommand cmd3 = new SqlCommand("select * from [SLOTTABLE] where APP_DATE=@appdate4 and DOCTOR_NO=501", con);
            cmd3.Parameters.Add("@appdate4", appdate4);
            SqlDataReader dr3 = cmd3.ExecuteReader();
            while (dr3.Read())
            {
                if (dr3["SLOT1"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT1"].ToString());
                }
                if (dr3["SLOT2"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT2"].ToString());
                }
                if (dr3["SLOT3"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT3"].ToString());
                }
                if (dr3["SLOT4"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT4"].ToString());
                }
                if (dr3["SLOT5"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT5"].ToString());
                }
                if (dr3["SLOT6"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT6"].ToString());
                }
                if (dr3["SLOT7"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT7"].ToString());
                }
                if (dr3["SLOT8"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT8"].ToString());
                }
                if (dr3["SLOT9"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT9"].ToString());
                }
                if (dr3["SLOT10"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT10"].ToString());
                }
                if (dr3["SLOT11"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT11"].ToString());
                }
                if (dr3["SLOT12"].ToString() != "BOOKED")
                {
                    DropDownList4.Items.Add(dr3["SLOT12"].ToString());
                }
            }
            dr3.Close();

            con.Close();

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            String book1 = DropDownList1.SelectedItem.Text;
            String[] data = book1.Split(' ');
            int docno = 501;
            Label6.Text = data[0];
            String SLOT = data[0];
            string appdate1 = Calendar1.SelectedDate.ToShortDateString();
            SqlCommand cmd = new SqlCommand("update [SLOTTABLE] set " + SLOT + "='BOOKED' where APP_DATE=@appdate and DOCTOR_NO=501", con);
            cmd.Parameters.Add("@appdate", appdate1);
            cmd.ExecuteNonQuery();
            SqlCommand icmd = new SqlCommand("insert into APPOINTMENT values(@uno,@aappdate,@apptime,@docno,@category,@fees)", con);
            icmd.Parameters.Add("@uno", Session["user_no"]);
            icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.ToShortDateString());
            icmd.Parameters.Add("@apptime", data[1]);
            icmd.Parameters.Add("@docno", Session["doctorSelected"]);
            icmd.Parameters.Add("@category", Session["category"]);
            icmd.Parameters.Add("@fees", Session["fees"]);
            //icmd.Parameters.Add("@uno", 2001);
            //icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.ToShortDateString());
            //icmd.Parameters.Add("@apptime", data[1]);
            //icmd.Parameters.Add("@docno", 501);
            //icmd.Parameters.Add("@category", 5);
            //icmd.Parameters.Add("@fees", 500);
            icmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Review1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String book1 = DropDownList1.SelectedItem.Text;

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            String book1 = DropDownList2.SelectedItem.Text;
            String[] data = book1.Split(' ');
            int docno = 501;
            Label6.Text = data[0];
            String SLOT = data[0];
            String appdate1 = Calendar1.SelectedDate.AddDays(1).ToShortDateString();
            SqlCommand cmd = new SqlCommand("update [SLOTTABLE] set " + SLOT + "='BOOKED' where APP_DATE=@appdate and DOCTOR_NO=501", con);
            cmd.Parameters.Add("@appdate", appdate1);
            cmd.ExecuteNonQuery();
            SqlCommand icmd = new SqlCommand("insert into APPOINTMENT values(@uno,@aappdate,@apptime,@docno,@category,@fees)", con);
            icmd.Parameters.Add("@uno", Session["user_no"]);
            icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.ToShortDateString());
            icmd.Parameters.Add("@apptime", data[1]);
            icmd.Parameters.Add("@docno", Session["doctorSelected"]);
            icmd.Parameters.Add("@category", Session["category"]);
            icmd.Parameters.Add("@fees", Session["fees"]);
            //icmd.Parameters.Add("@uno", 2001);
            //icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.AddDays(1).ToShortDateString());
            //icmd.Parameters.Add("@apptime", data[1]);
            //icmd.Parameters.Add("@docno", 501);
            //icmd.Parameters.Add("@category", 101);
            //icmd.Parameters.Add("@fees", 500);
            icmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Review1.aspx");
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            String book1 = DropDownList3.SelectedItem.Text;
            String[] data = book1.Split(' ');
            int docno = 501;
            Label6.Text = data[0];
            String SLOT = data[0];
            string appdate1 = Calendar1.SelectedDate.AddDays(2).ToShortDateString();
            SqlCommand cmd = new SqlCommand("update [SLOTTABLE] set " + SLOT + "='BOOKED' where APP_DATE=@appdate and DOCTOR_NO=501", con);
            cmd.Parameters.Add("@appdate", appdate1);
            cmd.ExecuteNonQuery();
            SqlCommand icmd = new SqlCommand("insert into APPOINTMENT values(@uno,@aappdate,@apptime,@docno,@category,@fees)", con);
            icmd.Parameters.Add("@uno", Session["user_no"]);
            icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.ToShortDateString());
            icmd.Parameters.Add("@apptime", data[1]);
            icmd.Parameters.Add("@docno", Session["doctorSelected"]);
            icmd.Parameters.Add("@category", Session["category"]);
            icmd.Parameters.Add("@fees", Session["fees"]);
            //icmd.Parameters.Add("@uno", 2001);
            //icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.AddDays(2).ToShortDateString());
            //icmd.Parameters.Add("@apptime", data[1]);
            //icmd.Parameters.Add("@docno", 501);
            //icmd.Parameters.Add("@category", 101);
            //icmd.Parameters.Add("@fees", 500);
            icmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Review1.aspx");
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            String book1 = DropDownList4.SelectedItem.Text;
            String[] data = book1.Split(' ');
            int docno = 501;
            Label6.Text = data[0];
            String SLOT = data[0];
            string appdate1 = Calendar1.SelectedDate.AddDays(3).ToShortDateString();
            SqlCommand cmd = new SqlCommand("update [SLOTTABLE] set " + SLOT + "='BOOKED' where APP_DATE=@appdate and DOCTOR_NO=501", con);
            cmd.Parameters.Add("@appdate", appdate1);
            cmd.ExecuteNonQuery();
            SqlCommand icmd = new SqlCommand("insert into APPOINTMENT values(@uno,@aappdate,@apptime,@docno,@category,@fees)", con);
            icmd.Parameters.Add("@uno", Session["user_no"]);
            icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.ToShortDateString());
            icmd.Parameters.Add("@apptime", data[1]);
            icmd.Parameters.Add("@docno", Session["doctorSelected"]);
            icmd.Parameters.Add("@category", Session["category"]);
            icmd.Parameters.Add("@fees", Session["fees"]);
            //icmd.Parameters.Add("@uno", 2001);
            //icmd.Parameters.Add("@aappdate", Calendar1.SelectedDate.AddDays(3).ToShortDateString());
            //icmd.Parameters.Add("@apptime", data[1]);
            //icmd.Parameters.Add("@docno", 501);
            //icmd.Parameters.Add("@category", 101);
            //icmd.Parameters.Add("@fees", 500);
            icmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Review1.aspx");
        }
    }
}


