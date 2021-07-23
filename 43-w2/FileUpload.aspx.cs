using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace H106B143_w2
{
    public partial class WebForm26 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string path = Page.Server.MapPath("Upload");
            string str;
            try
            {
                if(FileUpload1.HasFile)
                {
                    str = FileUpload1.FileName;
                    /*str += "檔案大小 : " + Convert.ToInt32(FileUpload1.PostedFile.ContentLength / 1024) + "KB<br>";
                    str += "檔案類型 : " + FileUpload1.PostedFile.ContentType + "<br>";*/
                    FileUpload1.SaveAs(path + "\\" + FileUpload1.FileName);
                    Response.Redirect("Writer.aspx?str="+str);//轉移
                    /*SqlConnection myConn = new SqlConnection(ConfigurationManager.
                                                         ConnectionStrings["ConnectionString"].ConnectionString);
                    myConn.Open();

                    Image1.ImageUrl = "/Upload/" + str;*/

                    // String strSQL = "insert into [bimage] ([photo_name]) values('" + str + "')"; 
                   // SqlCommand myCommand = new SqlCommand(strSQL, myConn); //strSQL 代替上述語法
                    
                    // SqlDataReader myDataReader = myCommand.ExecuteReader();
                    // myConn.Close();
                }
                else
                {
                    str = "請選擇一個檔案"; 
                }
            }
            catch(Exception ex)
            {
                str = "上傳錯誤!<br>";
                str += "錯誤類型 : " + ex.Message;
            }

            Label1.Text = str;

        }
    }
}