<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editInfo.aspx.cs" Inherits="yonghu_editInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 24px;
        }
        .auto-style2 {
            width: 22px;
        }
        .auto-style3 {
            width: 25px;
        }
        .auto-style4 {
            width: 1506px;
            height: 999px;
            position: absolute;
            top: 43%;
            left: 8px;
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

            <table style="background-image: url('http://localhost:57219/image/img5.jpg'); background-repeat: no-repeat; position: absolute; top: 20%;" class="auto-style4">
                                        <tr>
                                            <td colspan="1" style="width: 107px; height: 16px">
                                            </td>
                                            <td colspan="3" style="height: 16px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 107px; height: 16px">
                                            </td>
                                            <td style="width: 89px; height: 16px">
                                            </td>
                                            <td style="width: 100px; height: 16px">
                                            </td>
                                            <td align="center" style="width: 100px; height: 16px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" style="width: 107px; height: 4px">
                                            </td>
                                            <td align="center" style="width: 89px; height: 4px">
                                            </td>
                                            <td align="center" rowspan="5" style="width: 100px">
                <table border="1" style="width: 473px">
                    <tr>
                        <td bgcolor="#99ccff" colspan="2">
                            &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="华文新魏" Font-Size="X-Large"
                                ForeColor="SandyBrown">用户信息修改</asp:Label></td>
                    </tr>
                    <tr style="font-size: 12pt; color: #000000; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px; height: 22px">
                            用户姓名：</td>
                        <td style="width: 150px; height: 22px">
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Rfvname" runat="server" ControlToValidate="txtname"
                                Display="Dynamic" ErrorMessage="用户姓名不能为空" Font-Size="Small" Width="139px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px">
                            用户密码：</td>
                        <td style="width: 150px">
                            <asp:TextBox ID="txtpwd" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvpwd" runat="server" ControlToValidate="txtpwd"
                                Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="133px"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px">
                            英文姓名：</td>
                        <td style="width: 150px">
                            <asp:TextBox ID="txtywname" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px">
                            电子邮箱：</td>
                        <td style="width: 150px">
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px; height: 19px">
                            头像：</td>
                        <td align="center" style="width: 150px; height: 19px">
                            &nbsp; &nbsp;<table border="0" style="width: 100%">
                                <tr>
                                    <td style="width: 100px">
                            <asp:Image ID="imgtouxiang" runat="server"  /></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                            <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" ForeColor="Red" OnSelectedIndexChanged="ddltouxiang_SelectedIndexChanged"
                                >
                            </asp:DropDownList></td>
                                </tr>
                            </table>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr style="font-size: 12pt; font-family: Times New Roman;">
                        <td bgcolor="#99ccff" style="width: 121px; height: 21px">
                        </td>
                        <td style="width: 150px; height: 21px">
                            <asp:Button ID="Button1" runat="server"  Text="保存" Width="69px" OnClick="Button1_Click" />
                            &nbsp;&nbsp;
                            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" ForeColor="Blue"
                                OnClick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton>
                            <br />
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
                                                &nbsp;</td>
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
