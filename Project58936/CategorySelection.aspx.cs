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
    public partial class CategorySelection : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DAMS"].ConnectionString);
        //SqlConnection connection = new SqlConnection("Data Source = 10.3.117.14; Initial Catalog = DAMS; Integrated Security = True");
       
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillCategoryGrid();
            }

        }

        public void fillCategoryGrid()
        {

            connection.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from category", connection);
            da.Fill(ds, "category");
            GridView1.DataSource = ds;
            GridView1.DataMember = "category";
            GridView1.DataBind();
            connection.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Label2.Text = GridView1.SelectedRow.Cells[1].Text;
            int catId = int.Parse(GridView1.SelectedRow.Cells[1].Text);
            string catName = GridView1.SelectedRow.Cells[2].Text;
            Session["category"] = catId;
            Session["categoryName"] = catName;
            Response.Redirect("SelectDoctor.aspx");
        }
      
    }
}