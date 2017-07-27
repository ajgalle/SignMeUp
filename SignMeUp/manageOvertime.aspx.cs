using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignMeUp
{
    public partial class manageOvertime1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constring = @"Data Source = DESKTOP - DARBDT6\SQLEXPRESS; Initial Catalog = SignMeUpLocal; Integrated Security = True; Connect Timeout = 15; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False";

            using (SqlConnection conn = new SqlConnection(constring))
            {
                string queryString = "SELECT * FROM Overtime";

                using (SqlCommand cmd = new SqlCommand(queryString, conn))
                {
                    conn.Open();

                   var reader = cmd.ExecuteReader();
                     



            }
        }
    }
}