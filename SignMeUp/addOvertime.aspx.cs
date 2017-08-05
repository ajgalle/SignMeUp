using System.Data;
using System.Data.SqlClient;
using System.Configuration;
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
            if (Page.IsValid)
            {
                string connString = ConfigurationManager.ConnectionStrings["SignMeUpConnectionString"].ConnectionString;

                string queryString = "INSERT INTO Overtime (OvertimeDate,HoursBegin,HoursEnd,Deadline,Location,StillAdvertise,InterestedEmployees,FilledYet,PhotoPath) VALUES (@OVertimeDate,@HoursBegin,@HoursEnd,@Deadline,@Location,@StillAdvertise,@InterestedEmployees,@FilledYet, @PhotoPath)";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, conn))
                    {
                        conn.Open();
                        // This is to avoid SQL Injection problems; we first declared @parameters in the command line, so these are adding to their values.
                        cmd.Parameters.Add("@OvertimeDate", SqlDbType.NChar).Value = OvertimeDate.Text;
                        cmd.Parameters.Add("@HoursBegin", SqlDbType.NChar).Value = HoursBegin.Text;
                        cmd.Parameters.Add("@HoursEnd", SqlDbType.NChar).Value = HoursEnd.Text;
                        cmd.Parameters.Add("@Deadline", SqlDbType.NChar).Value = Deadline.Text;
                        cmd.Parameters.Add("@Location", SqlDbType.NChar).Value = dropdownLocation.Text;
                        cmd.Parameters.Add("@StillAdvertise", SqlDbType.NChar).Value = true;
                        cmd.Parameters.Add("@InterestedEmployees", SqlDbType.NChar).Value = "";
                        cmd.Parameters.Add("@FilledYet", SqlDbType.Bit).Value = false;
                        // Based on location, we need to tell the database where the gridview will eventually find the photopath, so we'll use a Switch/Case;
                        string PhotoPath;
                        switch (dropdownLocation.Text)
                        {
                            case "Virginia Beach":
                                PhotoPath = "~/images/vabeach.jpg";
                                break;
                            case "Accomack":
                                PhotoPath = "~/images/accomack.jpg";
                                break;
                            case "NorthHampton":
                                PhotoPath = "~/images/northhampton.jpg";
                                break;
                            case "Portsmouth":
                                PhotoPath = "~/images/portsmouth.jpg";
                                break;
                            case "Norfolk":
                                PhotoPath = "~/images/norfolk.jpg";
                                break;
                            default:
                                PhotoPath = "~/images/happyRobot.jpg";
                                break;
                        }
                        cmd.Parameters.Add("@PhotoPath", SqlDbType.NChar).Value = PhotoPath;
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Redirect("ManageOvertime.aspx");
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void HoursBegin_TextChanged(object sender, EventArgs e)
        {

        }
    }
}