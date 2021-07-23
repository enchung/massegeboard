<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="H106B143_w1.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <%
        Response.Write("<form name='FormA' method='post' action='Login.aspx'></form>");
        Response.Write("<input id='b1' type='button' onclick='FormA.submit();' value='用戶登入'></input> ");
        
    %>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="bg_Id" DataSourceID="SqlDataSource1" ShowHeader="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="bg_Id" InsertVisible="False" SortExpression="bg_Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("bg_Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("bg_time", "{0:D}") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">
                                        <asp:Image ID="Image1" runat="server" />
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("bg_content") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="留言" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>暱稱:<asp:Label ID="Label5" runat="server" Text='<%# Eval("gt_name") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>留言內容:<asp:Label ID="Label6" runat="server" Text='<%# Eval("gt_content") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>時間:<asp:Label ID="Label7" runat="server" Text='<%# Eval("gt_time") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>回應:<asp:Label ID="Label8" runat="server" Text='<%# Eval("reply_content") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [blogdiary] ORDER BY [bg_Id] DESC"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
