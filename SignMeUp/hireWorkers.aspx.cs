using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignMeUp
{
    public partial class manageOvertime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // When the page opens, lets find all the overtime that has an expired deadline and post it. 

            string connString = ConfigurationManager.ConnectionStrings["SignMeUpConnectionString"].ConnectionString;
            string queryString = "SELECT * FROM OVERTIME";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                conn.Open();

                using (SqlCommand cmd=new SqlCommand(queryString, conn))
                {
                    SqlDataReader reader = cmd.ExecuteReader();
                    // Now lets loop through and do something every time we see an OT that both IS closed and hasn't been filled yet.
                   
                    while (reader.Read())
                    {
                        // I think I can delete this --> bool StillAdvertise = Convert.ToBoolean(reader["StillAdvertise"]);

                        // Note: Since the times in the database and the time to trigger this event are both in the same time zone (that is, both set to be in universal time) and the manage and employee are always in the same time zone, this function will work.
                        //DateTime closingDateTime = Convert.ToDateTime(reader["deadline"]);

                        if (DateTime.Now > Convert.ToDateTime(reader["deadline"]))
                        { 
                        
                            FillThisOvertime.InnerHtml = FillThisOvertime.InnerHtml + "<p>"+reader["location"]+reader["Deadline"];
                            
                        }
                    }

                    //GridView1.DataSource = reader;
                    //GridView1.DataBind();

                }
            }
        }

    }
}