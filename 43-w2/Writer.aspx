<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Writer.aspx.cs" Inherits="H106B143_w1.Writer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <%
        Response.Write("<form name='FormA' method='post' action='FileUpload.aspx'></form>");
        Response.Write("<input id='b1' type='button' onclick='FormA.submit();' value='新增相片'></input> ");
        
    %>
    <form id="form1" runat="server">
        <div>
            <asp:image ID="imgPhoto" runat="server" Width="16px"></asp:image> 
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="252px" Width="615px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="建立網誌" />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO blogdiary(bg_content) VALUES (@bg_content)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="bg_content" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
