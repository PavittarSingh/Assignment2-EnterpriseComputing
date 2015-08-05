using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Assignment2_EnterpriseComputing.ViewData
{
    public partial class FT_Courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //string BDCS = ConfigurationManager.ConnectionStrings["Banner01"].ConnectionString;
           //SqlConnection con = new SqlConnection(BDCS);
           //SqlDataAdapter da = new SqlDataAdapter("Select * from Courses", con);
           
           //DataSet ds1 = new DataSet();
           //da.Fill(ds1);
           //GridView1.DataSource = ds1;
           //GridView1.DataBind();

        }
    }
}