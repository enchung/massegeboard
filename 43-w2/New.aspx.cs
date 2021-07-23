using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace H106B143_w1
{
    public partial class New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            Response.Redirect("View.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("View.aspx");
        }
    }
}