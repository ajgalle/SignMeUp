using System.Data;
using System.Data.SqlClient;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SignMeUp
{
    public partial class addOvertime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNewOvertime_Click(object sender, EventArgs e)
        {

            string connString = @"Data Source=DESKTOP-DARBDT6\SQLEXPRESS;Initial Catalog=SignMeUpLocal;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            string queryString = "INSERT INTO Overtime (OvertimeDate,HoursBegin,HoursEnd,Deadline,Location,StillAdvertise,InterestedEmployees) VALUES (@OVertimeDate,@HoursBegin,@HoursEnd,@Deadline,@Location,@StillAdvertise,@InterestedEmployees)";

            using (SqlConnection conn = new SqlConnection(connString))
            {
                using (SqlCommand cmd = new SqlCommand(queryString, conn))
                {
                    conn.Open();
                    // THis is to avoid SQL Injection problems; we first declared @parameters in the command line, so these are adding to their values.
                    cmd.Parameters.Add("@OvertimeDate", SqlDbType.NChar).Value = OvertimeDate.Text;
                    cmd.Parameters.Add("@HoursBegin", SqlDbType.NChar).Value = HoursBegin.Text;
                    cmd.Parameters.Add("@HoursEnd", SqlDbType.NChar).Value = HoursEnd.Text;
                    cmd.Parameters.Add("@Deadline", SqlDbType.NChar).Value = Deadline.Text;
                    cmd.Parameters.Add("@Location", SqlDbType.NChar).Value = Location.Text;
                    cmd.Parameters.Add("@StillAdvertise", SqlDbType.Bit).Value = true;
                    cmd.Parameters.Add("@InterestedEmployees", SqlDbType.NChar).Value = "";

                    cmd.ExecuteNonQuery();
                }
            }
            Response.Redirect("ViewOvertime.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void HoursBegin_TextChanged(object sender, EventArgs e)
        {

        }
    }
}