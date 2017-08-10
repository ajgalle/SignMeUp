using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;


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
                // We'll use a stored procedure to check to make sure username doesn't already exist.
                // if it does, it will return a -1 and we'll display a message
                // if it doesn't exist, we will add them and redirect.

                string connString = ConfigurationManager.ConnectionStrings["SignMeUpConnectionString"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connString))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", conn);

                    cmd.CommandType = CommandType.StoredProcedure;

                    string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");


                    SqlParameter LastName = new SqlParameter("@LastName", txtLastName.Text);
                    SqlParameter FirstName = new SqlParameter("@FirstName", txtFirstName.Text);
                    SqlParameter Email = new SqlParameter("@Email", txtEmail.Text);
                    SqlParameter Password = new SqlParameter("@Password", EncryptedPassword);
                    SqlParameter HomeOffice = new SqlParameter("@HomeOffice", dropdownHomeOffice.Text);

                    cmd.Parameters.Add(LastName);
                    cmd.Parameters.Add(FirstName);
                    cmd.Parameters.Add(Email);
                    cmd.Parameters.Add(Password);
                    cmd.Parameters.Add(HomeOffice);

                    conn.Open();

                    int ReturnCode = (int)cmd.ExecuteScalar();

                    if (ReturnCode == -1)
                    {
                        lblEmailAlreadyInUse.Text = "This email address is already in use. Please choose another.";
                    }
                    else
                    {
                        Response.Redirect("~/default.aspx");
                    }

                }





            //    string queryString = "INSERT INTO Employee (LastName,FirstName,Email,Password,HomeOffice) VALUES (@LastName,@FirstName,@Email,@Password,@HomeOffice)";


            //    using (SqlConnection conn = new SqlConnection(connString))
            //    {
            //        using (SqlCommand cmd = new SqlCommand(queryString, conn))
            //        {
            //            conn.Open();

                        

            //            // This is to avoid SQL Injection problems; we first declared @parameters in the command line, so these are adding to their values.
            //            cmd.Parameters.Add("@LastName", SqlDbType.NChar).Value = txtFirstName.Text;
            //            cmd.Parameters.Add("@FirstName", SqlDbType.NChar).Value = txtLastName.Text;
            //            cmd.Parameters.Add("@Email", SqlDbType.NChar).Value = txtEmail.Text;
            //            cmd.Parameters.Add("@Password", SqlDbType.NChar).Value = txtPassword.Text;
            //            cmd.Parameters.Add("@HomeOffice", SqlDbType.NChar).Value = dropdownHomeOffice.Text;
            //            cmd.ExecuteNonQuery();
            //        }
            //    }
            //    Response.Redirect("ViewOvertime.aspx");
           }
        }
    }
}