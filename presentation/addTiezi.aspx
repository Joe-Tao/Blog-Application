<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addTiezi.aspx.cs" Inherits="addTiezi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 21px;
            width: 72px;
        }
        .auto-style2 {
            width: 72px;
        }
        .auto-style3 {
            height: 80px;
            width: 72px;
        }
        .auto-style4 {
            height: 22px;
            width: 72px;
        }
        .auto-style5 {
            width: 40%;
        }
        .auto-style6 {
            width: 1516px;
            height: 178px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <td style="width: 95px">
                        <table border="0" class="auto-style5">
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label7" runat="server" Font-Size="50px" ForeColor="#C04000" Text="欢迎来到论坛!"
                                        Width="350px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="128px" CausesValidation="False" OnClick="LinkButton2_Click">用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image7" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" ForeColor="Blue"
                                        OnClick="LinkButton3_Click" Width="256px" CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image3" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="30px" 
                                        Width="192px" CausesValidation="False" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image4" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 177px">
                                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="125px" CausesValidation="False" OnClick="LinkButton4_Click">用户登录</asp:LinkButton></td>
                                <td style="width: 177px">
                                    <asp:Image ID="Image5" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbtnsy" runat="server" CausesValidation="False" Font-Size="30px"
                                        OnClick="lbtnsy_Click" Width="130px">返回首页</asp:LinkButton></td>
                                <td style="width: 806064px">
                                    </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr style="font-family: Times New Roman">
                    <td align="center" style="width: 95px">
                        <table style="background-image: url('image/img5.jpg'); background-repeat: no-repeat;" class="auto-style6" >
                            <tr>
                                <td style="width: 107px; height: 16px">
                                </td>
                                <td colspan="2" style="height: 16px">
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                </td>
                                <td align="center" style="width: 81px; height: 16px">
                                </td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 107px; height: 4px">
                                </td>
                                <td align="center" colspan="2" rowspan="5">
                        <table style="width: 500px" align="center" border="1">
                            <tr>
                                 <td align="center" colspan="2" bgcolor="red">
                                 <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="发表新帖子" Font-Bold="True" ForeColor="White"></asp:Label></td>
                            </tr>
                            <tr style="font-size: 12pt; color: #000000">
                                 <td align="left" bgcolor="#99ccff" class="auto-style1">
                                 <asp:Label ID="lblname" runat="server" Font-Size="Small" Text="用户名：" Width="122px"></asp:Label></td>
                                <td style="width: 100px; height: 21px ;" bgcolor="#99ccff">
                                    &nbsp;&nbsp;
                                 <asp:Label ID="lblyhm" runat="server" Text="Label"></asp:Label></td>
                            </tr>
                <tr>
                <td align="center" bgcolor="#99ccff" class="auto-style2">
                    <asp:Label ID="lbltitle" runat="server" Font-Size="Small" Text="标　题：" Width="115px"></asp:Label></td>
                <td style="width: 100px" bgcolor="#99ccff">
                    <asp:TextBox ID="txtbt" runat="server" Width="170px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvbt" runat="server" ControlToValidate="txtbt" Display="Dynamic"
                        ErrorMessage="标题不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" bgcolor="#99ccff" class="auto-style3">
                    <asp:Label ID="lblnr" runat="server" Font-Size="Small" Text="具体内容：" Width="136px"></asp:Label></td>
                <td align="left" style="width: 100px; height: 80px" bgcolor="#99ccff">
                    <asp:TextBox ID="txtnr" runat="server" Height="77px" TextMode="MultiLine" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtnr"
                        Display="Dynamic" ErrorMessage="内容不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="center" bgcolor="#99ccff" class="auto-style4">
                </td>
                <td align="center" style="width: 100px; height: 22px" bgcolor="#99ccff">
                    &nbsp; &nbsp;
                    <div style="text-align: center">
                        <table>
                            <tr>
                                <td style="width: 296px">
                    <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" /></td>
                                <td style="width: 238px">
                    <asp:Button ID="Button1" runat="server" Text="重写" CausesValidation="False" OnClick="Button1_Click" /></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" bgcolor="#99ccff" colspan="2" style="height: 23px">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="Small" ForeColor="Blue"
                        OnClick="LinkButton1_Click" CausesValidation="False">返回首页</asp:LinkButton></td>
            </tr>
        </table>
                                    &nbsp;</td>
                                <td style="font-size: 12pt; width: 81px; font-family: Times New Roman; height: 4px">
                                    &nbsp;</td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td align="right" style="width: 107px">
                                </td>
                                <td style="width: 81px">
                                </td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td align="center" style="width: 107px">
                                </td>
                                <td align="center" style="width: 81px">
                                    &nbsp;</td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td style="width: 107px; height: 30px">
                                </td>
                                <td style="width: 81px; height: 30px">
                                </td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td style="width: 107px">
                                </td>
                                <td style="width: 81px">
                                </td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td colspan="1" style="width: 107px">
                                </td>
                                <td colspan="3">
                                    &nbsp;</td>
                            </tr>
                            <tr style="font-size: 12pt; font-family: Times New Roman">
                                <td colspan="1" style="width: 107px">
                                </td>
                                <td colspan="3">
                                    ------------------------------------------------------</td>
                            </tr>
                        </table>
                    </td>
        </div>
    </form>
</body>
</html>
