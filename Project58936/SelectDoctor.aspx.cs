using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project58936
{
    public partial class SelectDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GridView1.SelectedRow.Cells[1].Text;
            int docId = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            Session["doctorSelected"] = docId;
            //Response.Redirect("Appointment.aspx");
        }
    }
}