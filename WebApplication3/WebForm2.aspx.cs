using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request["submit"] != null)
            {
                Response.Write("Hello " + Request["fName"]);
                Response.Redirect("WebForm3.aspx");
            }
        }
    }
}