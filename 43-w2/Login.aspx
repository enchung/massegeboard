<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="H106B143_w1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="L_ID" runat="server" Text="帳號 :"></asp:Label>
&nbsp;
            <asp:TextBox ID="T_ID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="L_PASS" runat="server" Text="密碼 :"></asp:Label>
&nbsp;
            <asp:TextBox ID="T_PASS" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/LoginB.aspx" Text="登入" />
        </div>
    </form>
</body>
</html>
