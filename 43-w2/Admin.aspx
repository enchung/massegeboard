<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="H106B143_w1.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
     <%
         Response.Write("<form name='FormA' method='post' action='Writer.aspx'>");
         Response.Write("<input id='b1' type='button' onclick='FormA.submit();' value='新增網誌'></input> ");
         Response.Write("<input id='b2' type='button' onclick='FormB.submit();' value='登出'></input> ");
         Response.Write("</form>");
         Response.Write("<form name='FormB' method='post' action='Logout.aspx'>");
          Response.Write("</form>");
    %>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="bg_Id" DataSourceID="SqlDataSource1" ShowHeader="False">
            <Columns>
                <asp:TemplateField HeaderText="bg_Id" InsertVisible="False" SortExpression="bg_Id">
                    <EditItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("bg_time") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("bg_photo", "Upload/{0}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("bg_content") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td>暱稱 :
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("gt_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>留言內容 :
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("gt_content") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>時間 :
                                    <asp:Label ID="Label14" runat="server" Text='<%# Eval("gt_time") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td>回應 :
                                    <asp:TextBox ID="TextBox1" runat="server" Height="96px" Text='<%# Bind("reply_content") %>' Width="157px"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="Button3" runat="server" CommandName="Update" Text="送出" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button4" runat="server" CommandName="Cancel" Text="取消" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("bg_time") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("bg_photo", "Upload/{0}") %>' />
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
                                <td>暱稱 :
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("gt_name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>留言內容 :
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("gt_content") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">時間 :
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("gt_time") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td>回應 :
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("reply_content") %>'></asp:Label>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" CommandName="Delete" Text="刪除" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CommandName="Edit" Text="回應" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [blogdiary] WHERE [bg_Id] = @bg_Id" InsertCommand="INSERT INTO [blogdiary] ([bg_photo], [bg_content], [bg_time], [gt_name], [gt_content], [gt_time], [reply_content], [reply_time]) VALUES (@bg_photo, @bg_content, @bg_time, @gt_name, @gt_content, @gt_time, @reply_content, @reply_time)" SelectCommand="SELECT * FROM [blogdiary] ORDER BY [bg_Id] DESC" UpdateCommand="UPDATE [blogdiary] SET  [reply_content] = @reply_content, [reply_time] = getdate() WHERE [bg_Id] = @bg_Id">
            <DeleteParameters>
                <asp:Parameter Name="bg_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bg_photo" Type="String" />
                <asp:Parameter Name="bg_content" Type="String" />
                <asp:Parameter DbType="Date" Name="bg_time" />
                <asp:Parameter Name="gt_name" Type="String" />
                <asp:Parameter Name="gt_content" Type="String" />
                <asp:Parameter Name="gt_time" Type="DateTime" />
                <asp:Parameter Name="reply_content" Type="String" />
                <asp:Parameter Name="reply_time" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="bg_photo" Type="String" />
                <asp:Parameter Name="bg_content" Type="String" />
                <asp:Parameter DbType="Date" Name="bg_time" />
                <asp:Parameter Name="gt_name" Type="String" />
                <asp:Parameter Name="gt_content" Type="String" />
                <asp:Parameter Name="gt_time" Type="DateTime" />
                <asp:Parameter Name="reply_content" Type="String" />
                <asp:Parameter Name="reply_time" Type="DateTime" />
                <asp:Parameter Name="bg_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
</body>
</html>
