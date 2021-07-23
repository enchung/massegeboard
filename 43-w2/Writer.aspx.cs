using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace H106B143_w1
{
    public partial class Writer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String str = Request.Form["str"]; //接收轉移的變數資料 
            imgPhoto.ImageUrl = "/Upload/" + str;
            // Response.Write(Request["filename"]);
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                SqlDataSource1.Insert();
                Response.Redirect("View.aspx");
            
        }
    }
}