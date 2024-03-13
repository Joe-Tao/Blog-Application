<%@ Page Language="C#" AutoEventWireup="true" CodeFile="information.aspx.cs" Inherits="yonghu_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 16px;
            width: 100px;
        }
        .auto-style2 {
            width: 100px;
        }
        .auto-style3 {
            height: 16px;
            width: 102px;
        }
        .auto-style4 {
            width: 152px;
        }
        .auto-style5 {
            height: 16px;
            width: 124px;
        }
        .auto-style6 {
            height: 16px;
            width: 152px;
        }
        .auto-style7 {
            width: 1502px;
            height: 1000px;
            position: absolute;
            top: 20%;
            left: 10px;
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
                                <td class="auto-style1">
                                    <asp:Image ID="Image7" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" ForeColor="Blue"
                                        OnClick="LinkButton3_Click" Width="254px" CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                <td class="auto-style2">
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
                                <td class="auto-style3">
                                    <asp:Image ID="Image5" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbtnsy" runat="server" CausesValidation="False" Font-Size="30px"
                                        OnClick="lbtnsy_Click" Width="102px">写帖子</asp:LinkButton></td>
                               
                            </tr>
                            

            </table>
            <table style="background-image: url('http://localhost:57219/image/img5.jpg'); background-repeat: no-repeat; position: absolute; top: 20%;" class="auto-style7">
                                        <tr>
                                            <td colspan="1" style="width: 107px; height: 16px">
                                            </td>
                                            <td colspan="3" style="height: 16px">
                                             </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 107px; height: 16px">
                                            </td>
                                            <td style="width: 89px; height: 16px">
                                            </td>
                                            <td style="text-align: center;" class="auto-style6">
                                                用户列表

                                            </td>
                                            <td align="center" style="width: 100px; height: 16px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 107px; height: 4px">
                                            </td>
                                            <td align="center" style="width: 89px; height: 4px">
                                            </td>
                                            <td align="center" rowspan="5" class="auto-style4">
                        <table border="1" style="width: 473px">
                            
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            CellPadding="4" Font-Size="Small" ForeColor="#333333" GridLines="None" OnRowDeleting="GridView1_RowDeleting"
                            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="99%" OnRowDataBound="GridView1_RowDataBound">
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="UserId" HeaderText="用户编号" />
                                <asp:BoundField DataField="UserName" HeaderText="用户姓名" />
                                <asp:BoundField DataField="Ename" HeaderText="英文姓名" />
                                <asp:BoundField DataField="Email" HeaderText="电子邮箱" />
                                <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
                                <asp:HyperLinkField DataNavigateUrlFields="UserId" DataNavigateUrlFormatString="yonghuxiugai.aspx?UserId={0}"
                                    Text="修改" HeaderText="修改" />
                            </Columns>
                            <RowStyle BackColor="#EFF3FB" />
                            <EditRowStyle BackColor="#2461BF" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <HeaderStyle BorderStyle="None" Font-Bold="True" ForeColor="White" BackColor="#507CD1" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                         </table>
                            
                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Names="华文新魏" ForeColor="Blue"
                            OnClick="LinkButton7_Click">查询</asp:LinkButton>
                                    &nbsp; &nbsp;
                        <asp:LinkButton ID="LinkButton8" runat="server" Font-Names="华文新魏" Font-Size="Medium"
                            OnClick="LinkButton8_Click">返回首页</asp:LinkButton>&nbsp;</td>
                    </td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td  style="width: 121px; height: 21px">
                        </td>
                        <td style="width: 150px; height: 21px">
                            &nbsp;&nbsp;
                            &nbsp;<br />
                            <br />
                        </td>
                    </tr>
                </table>
                                            </td>
                                            <td style="font-size: 12pt; width: 100px; font-family: Times New Roman; height: 4px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="right" style="width: 107px">
                                            </td>
                                            <td align="right" style="width: 89px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td align="center" style="width: 107px">
                                            </td>
                                            <td align="center" style="width: 89px">
                                            </td>
                                            <td align="center" style="width: 100px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td style="width: 107px; height: 30px">
                                            </td>
                                            <td style="width: 89px; height: 30px">
                                            </td>
                                            <td style="width: 100px; height: 30px">
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td style="width: 107px">
                                            </td>
                                            <td style="width: 89px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td colspan="1" style="width: 107px">
                                            </td>
                                            <td colspan="3">
                                                &nbsp;</td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td style="width: 107px">
                                            </td>
                                            <td style="width: 89px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td colspan="1" style="width: 107px">
                                            </td>
                                            <td colspan="3" style="text-align: center">
                                               </td>
                                        </tr>
                                        <tr style="font-size: 12pt; font-family: Times New Roman">
                                            <td style="width: 107px; height: 10px">
                                            </td>
                                            <td style="width: 89px; height: 10px">
                                            </td>
                                            <td style="width: 100px; height: 10px">
                                            </td>
                                            <td style="width: 100px; height: 10px">
                                            </td>
                                        </tr>
                                    </table>



        </div>
    </form>
</body>
</html>
