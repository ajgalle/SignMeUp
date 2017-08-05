using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SignMeUp
{
    public partial class ViewOvertime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get the datafrom database
            DataSet ds = GetData();
            //put it in the UI
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        //First let's populate the gridview with overtime opporunities
        private DataSet GetData()
        {
            string connString = ConfigurationManager.ConnectionStrings["SignMeUpConnectionString"].ConnectionString;
            string queryString = "SELECT * from Overtime";
            using (SqlConnection conn = new SqlConnection(connString))
            {
                SqlDataAdapter da = new SqlDataAdapter(queryString, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }


        }
        protected void understood_CheckedChanged(object sender, EventArgs e)
        {
        
                if (understood.Checked)
                {
                    requestOvertime.Text = "true";
            }
                else
                {
                    requestOvertime.Text = "false";
                }
        
        }

        protected void requestOvertime_Click(object sender, EventArgs e)
        {

        }
    }
}