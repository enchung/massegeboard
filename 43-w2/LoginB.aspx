<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginB.aspx.cs" Inherits="H106B143_w1.LoginB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <%
        if(Session["Loginstatus"] == "N")
        {
            Response.Write("<form name='FormA' method='post' action='View.aspx'></form>");
            Response.Write("<br><input type ='button' onclick='FormA.submit();' value='回觀看留言'></input>");
        }
    %>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
