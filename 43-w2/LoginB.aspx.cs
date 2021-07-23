using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace H106B143_w1
{
    public partial class LoginB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Add("LoginStatus", "");
            String S_ID = Request.Form["T_ID"];
            String S_PASS = Request.Form["T_PASS"];
            if(S_ID == "RRRAY" && S_PASS == "123456")
            {
                Session["LoginStatus"] = "Y";
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label1.Text = "無法登入，使用者帳號或密碼錯誤";
                Session["LoginStatus"] = "N";
            }
        }
    }
}