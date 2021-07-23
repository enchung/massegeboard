<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="New.aspx.cs" Inherits="H106B143_w1.New" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 76px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>暱稱 :&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>內容 :&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" Height="99px" Width="231px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="送出留言" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO blogdiary(gt_name, gt_content) VALUES (@gt_name, @gt_content)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
            <InsertParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="gt_name" PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" Name="gt_content" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
