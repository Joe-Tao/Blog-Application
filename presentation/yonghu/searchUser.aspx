<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchUser.aspx.cs" Inherits="yonghu_searchUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 20%;
            left: 10px;
            width: 29px;
        }
        .auto-style2 {
            position: absolute;
            top: 20%;
            left: 10px;
            width: 30px;
        }
        .auto-style3 {
            position: absolute;
            top: 20%;
            left: 14px;
            width: 1500px;
            height: 1000px;
        }
        .auto-style4 {
            position: absolute;
            top: 20%;
            left: 10px;
            width: 14px;
        }
        .auto-style5 {
            position: absolute;
            top: 20%;
            left: 14px;
            width: 1498px;
        }
        .auto-style6 {
            position: absolute;
            top: 20%;
            left: 14px;
            width: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" class="auto-style5" style="position: fixed; background-color: #CCCCFF; top: 0px;">
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label7" runat="server" Font-Size="50px" ForeColor="#C04000" Text="欢迎来到论坛!"
                                        Width="352px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="140px" CausesValidation="False" OnClick="LinkButton2_Click">用户信息</asp:LinkButton></td>
                                <td class="auto-style1">
                                    <asp:Image ID="Image7" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" ForeColor="Blue"
                                        OnClick="LinkButton3_Click" Width="254px" CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                <td class="auto-style4">
                                    <asp:Image ID="Image3" runat="server" Height="16px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="30px" 
                                        Width="190px" CausesValidation="False" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                <td class="auto-style2">
                                    <asp:Image ID="Image4" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 177px">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="129px" CausesValidation="False" OnClick="LinkButton4_Click">用户登录</asp:LinkButton></td>
                                <td class="auto-style6">
                                    <asp:Image ID="Image5" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbtnsy" runat="server" CausesValidation="False" Font-Size="30px"
                                        OnClick="lbtnsy_Click" Width="102px">写帖子</asp:LinkButton></td>
                               
                            </tr>
                            <tr>

                            </tr>


            </table>

            <table class="auto-style3" style="background-image: url('http://localhost:57219/image/img5.jpg'); background-repeat: no-repeat">
                 <tr>
                      <td align="center" style="width: 690px; height: 17px">
                      <div style="text-align: center">
                          <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                                    ForeColor="Brown" Width="706px">用户信息查询</asp:Label></div>
                       </td>
                 </tr>
                            <tr>
                                <td align="center" style="width: 690px; height: 17px">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 690px; height: 17px">
                                    <table style="width: 754px">
                                        <tr>
                                            <td style="width: 100px; height: 26px">
                                            </td>
                                            <td style="width: 100px; height: 26px">
                                                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Font-Size="Small" GroupName="a"
                                                    Text="用户编号" Width="147px" /></td>
                                            <td style="width: 100px; height: 26px">
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                                            <td style="width: 100px; height: 26px">
                                                <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Small" GroupName="a"
                                                    Text="用户名称" Width="145px" /></td>
                                            <td style="width: 100px; height: 26px">
                                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                                            <td style="width: 100px; height: 26px">
                                                <asp:Button ID="btnselect" runat="server" Text="查询" OnClick="btnselect_Click" /></td>
                                            <td style="width: 100px; height: 26px">
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="全部显示" /></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 690px; height: 17px">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                    ForeColor="#333333" GridLines="None"  AllowPaging="True" Height="149px"  OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDeleting="GridView1_RowDeleting" Width="620px" Font-Names="华文行楷" Font-Size="11pt" OnRowDataBound="GridView1_RowDataBound">
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <Columns>
                                                        <asp:ImageField DataImageUrlField="Logo" HeaderText="头像">
                                                        </asp:ImageField>
                                                        <asp:BoundField DataField="UserId" HeaderText="用户编号" />
                                                        <asp:BoundField DataField="UserName" HeaderText="用户名称" />
                                                        <asp:BoundField DataField="Ename" HeaderText="英文姓名" />
                                                        <asp:BoundField DataField="Email" HeaderText="电子邮箱" />
                                                        <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                                                        
                                                    </Columns>
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 690px; height: 17px">
                                     </tr>
                            <tr>
                                <td align="center" style="width: 690px; height: 17px">
                                    &nbsp;</td>
                            </tr>
                        </table>
        </div>
    </form>
</body>
</html>
