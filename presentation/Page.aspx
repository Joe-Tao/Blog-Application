<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page.aspx.cs" Inherits="Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1605px;
            height: 911px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <table border="0" class="auto-style5" style="position: fixed; background-color: #CCCCFF;">
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label7" runat="server" Font-Size="50px" ForeColor="#C04000" Text="欢迎来到论坛!"
                                        Width="352px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="140px" CausesValidation="False" OnClick="LinkButton2_Click">用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image7" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" ForeColor="Blue"
                                        OnClick="LinkButton3_Click" Width="254px" CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image3" runat="server" Height="16px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="30px" 
                                        Width="190px" CausesValidation="False" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image4" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 177px">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="129px" CausesValidation="False" OnClick="LinkButton4_Click">用户登录</asp:LinkButton></td>
                                <td style="width: 177px">
                                    <asp:Image ID="Image5" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbtnsy" runat="server" CausesValidation="False" Font-Size="30px"
                                        OnClick="lbtnsy_Click" Width="102px">写帖子</asp:LinkButton></td>
                                <td style="width: 806064px">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           

                                    </td>
                            </tr>
                        </table>
            
            <br />
           

            <br />
            <table style="background-image: url('http://localhost:57219/image/img5.jpg'); background-repeat: no-repeat"undefined" class="auto-style1">
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ContId], [Subject], [Words], [UserName], [LastAnswerTime], [CreateTime], [HitCount], [IsTop], [UpperId] FROM [tb_Content]" DeleteCommand="DELETE FROM [tb_Content] WHERE [ContId] = @ContId" InsertCommand="INSERT INTO [tb_Content] ([Subject], [Words], [UserName], [LastAnswerTime], [CreateTime], [HitCount], [IsTop], [UpperId]) VALUES (@Subject, @Words, @UserName, @LastAnswerTime, @CreateTime, @HitCount, @IsTop, @UpperId)" UpdateCommand="UPDATE [tb_Content] SET [Subject] = @Subject, [Words] = @Words, [UserName] = @UserName, [LastAnswerTime] = @LastAnswerTime, [CreateTime] = @CreateTime, [HitCount] = @HitCount, [IsTop] = @IsTop, [UpperId] = @UpperId WHERE [ContId] = @ContId">
                            <DeleteParameters>
                                <asp:Parameter Name="ContId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="Words" Type="String" />
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="LastAnswerTime" Type="String" />
                                <asp:Parameter Name="CreateTime" Type="String" />
                                <asp:Parameter Name="HitCount" Type="Int32" />
                                <asp:Parameter Name="IsTop" Type="Boolean" />
                                <asp:Parameter Name="UpperId" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Subject" Type="String" />
                                <asp:Parameter Name="Words" Type="String" />
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="LastAnswerTime" Type="String" />
                                <asp:Parameter Name="CreateTime" Type="String" />
                                <asp:Parameter Name="HitCount" Type="Int32" />
                                <asp:Parameter Name="IsTop" Type="Boolean" />
                                <asp:Parameter Name="UpperId" Type="Int32" />
                                <asp:Parameter Name="ContId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
            <asp:GridView ID="gvlt" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" Font-Size="12pt" ForeColor="#333333" GridLines="None" Width="870px" Font-Names="华文新魏" PageSize="14" OnRowDeleting="gvlt_RowDeleting" DataKeyNames="ContId" DataSourceID="SqlDataSource1">
                            <FooterStyle BackColor="#8080FF" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                
                                <asp:BoundField DataField="Subject" HeaderText="主题" SortExpression="Subject" />
                                <asp:BoundField DataField="UserName" HeaderText="发布者" SortExpression="UserName" />
                                <asp:BoundField DataField="LastAnswerTime" HeaderText="最后回复时间" SortExpression="LastAnswerTime" />
                                <asp:BoundField DataField="CreateTime" HeaderText="发表时间" SortExpression="CreateTime" />
                                <asp:BoundField DataField="HitCount" HeaderText="点击量" SortExpression="HitCount" />
                                <asp:HyperLinkField DataNavigateUrlFields="ContId" DataNavigateUrlFormatString="tiezi.aspx?ContId={0}"
                                    HeaderText="详细信息" Text="详细信息" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <RowStyle BackColor="LightBlue" />
                            <EditRowStyle BackColor="#2461BF" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="LightBlue" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BackColor="#EFF3FB" Font-Bold="True" ForeColor="DimGray" />
                            <AlternatingRowStyle BackColor="White" Font-Size="Small" />
                        </asp:GridView>
                    </td>

                </tr>
                <tr>
                    <td>
                    </td>
                </tr>

            </table>
            
           

            <br />
            

        </div>
    </form>
</body>
</html>
