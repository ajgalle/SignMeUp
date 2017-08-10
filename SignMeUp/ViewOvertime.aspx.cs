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
            if (!IsPostBack) { 
            //Get the datafrom database
            DataSet ds = GetData();
            //put it in the UI
            GridView1.DataSource = ds;
            GridView1.DataBind();
            //Delete the next line after testing is done.
            TestItOut.Text = "Try it out RIGHT NOW!";
            }
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

        protected void requestOvertime_Click(object sender, EventArgs e)
        {
            string str = string.Empty;


            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                                                  
                CheckBox chk = gvrow.FindControl("chkSelect") as CheckBox;
                Label lblOvertimeID = gvrow.FindControl("lblOvertimeID") as Label;

                if (chk.Checked)
                {

                    str += lblOvertimeID.Text + ",";
                   
                }

                

            }
            TestItOut.Text = "You noted you were interested in: " + str;


        }

    }
}
