using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignMeUp
{
    public partial class ViewOvertime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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