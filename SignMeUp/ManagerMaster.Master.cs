using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignMeUp
{
    public partial class ManagerMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Must be logged in and must be manager to view any of these pages.  
            if (!Convert.ToBoolean(Session["isLoggedIn"]))
            {
                Response.Redirect("default.aspx");
            }
            if (!Convert.ToBoolean(Session["isManager"]))
            {
                Response.Redirect("default.aspx");
            }
        }
    }
}