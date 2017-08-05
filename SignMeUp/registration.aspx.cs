using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace SignMeUp
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string connString = ConfigurationManager.ConnectionStrings["SignMeUpConnectionString"].ConnectionString;
                string queryString = "INSERT INTO Employee (LastName,FirstName,Email,Password,HomeOffice) VALUES (@LastName,@FirstName,@Email,@Password,@HomeOffice)";

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, conn))
                    {
                        conn.Open();
                        // This is to avoid SQL Injection problems; we first declared @parameters in the command line, so these are adding to their values.
                        cmd.Parameters.Add("@LastName", SqlDbType.NChar).Value = txtFirstName.Text;
                        cmd.Parameters.Add("@FirstName", SqlDbType.NChar).Value = txtLastName.Text;
                        cmd.Parameters.Add("@Email", SqlDbType.NChar).Value = txtEmail.Text;
                        cmd.Parameters.Add("@Password", SqlDbType.NChar).Value = txtPassword.Text;
                        cmd.Parameters.Add("@HomeOffice", SqlDbType.NChar).Value = dropdownHomeOffice.Text;
                        cmd.ExecuteNonQuery();
                    }
                }
                Response.Redirect("ViewOvertime.aspx");
            }
        }
    }
}