<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tiezi.aspx.cs" Inherits="tiezi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 451px;
        }
        .auto-style2 {
            width: 51%;
        }
        .auto-style3 {
            width: 1520px;
        }
        .auto-style4 {
            z-index: -1;
            position: absolute;
            left: 0px;
            top: 15%;
            width: 1502px;
            height: 1005px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" class="auto-style5" style="background-color: #CCCCFF">
                            <tr>
                                <td style="width: 100px">
                                    <asp:Label ID="Label8" runat="server" Font-Size="50px" ForeColor="#C04000" Text="欢迎来到论坛!"
                                        Width="338px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="30px" ForeColor="Blue"
                                         Width="134px" CausesValidation="False" OnClick="LinkButton2_Click">用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image7" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="30px" ForeColor="Blue"
                                        OnClick="LinkButton3_Click" Width="258px" CausesValidation="False">修改当前用户信息</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:Image ID="Image3" runat="server" Height="8px" ImageUrl="~/image/jiantou.gif"
                                        Width="12px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="30px" 
                                        Width="198px" CausesValidation="False" OnClick="LinkButton5_Click">用户信息查询 </asp:LinkButton></td>
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
                                        OnClick="lbtnsy_Click" Width="132px">返回首页</asp:LinkButton></td>
                                <td style="width: 806064px">
                                    </td>
                            </tr>
                        </table>
            <br />
            <table style="background-image: url('http://localhost:57219/image/img5.jpg'); background-repeat: no-repeat; " class="auto-style4">
                <tr>
                    <td>
                        
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ContId], [hfId], [hfSubject], [hfnr], [hfname], [hftime] FROM [tb_hf]"></asp:SqlDataSource>
            <table  class="auto-style3" >
                <tr>
                    <td>
                        <asp:DataList ID="dlxx" runat="server" OnItemCommand="DataList1_ItemCommand" Width="810px">
                            <ItemTemplate>
                                <table border="1" bordercolor="#99ccff" style="width: 800px" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td bgcolor="#99ccff" style="width: 1356px; height: 1px;" valign="bottom">
                                            <div style="text-align: center">
                                                <table border="0" style="width: 100%">
                                                    <tr>
                                                        <td style="width: 76px">
                                                            <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text="发起人名：" Width="104px"></asp:Label></td>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="lblyhm" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text='<%# DataBinder.Eval(Container.DataItem,"UserName") %>' Width="76px"></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td bgcolor="#99ccff" style="width: 271px; height: 1px; padding-right: 0px; padding-left: 0px;
                                            padding-bottom: 0px; margin: 0px; padding-top: 0px;" valign="bottom">
                                            <div style="text-align: center">
                                                <table border="0" style="width: 340px" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td style="width: 29px; height: 16px;">
                                                            <asp:Label ID="lbltzbh" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text="帖子编号：" Width="68px"></asp:Label></td>
                                                        <td style="width: 263px; height: 16px;" align="left">
                                                            <asp:Label ID="lblbh" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text='<%# DataBinder.Eval(Container.DataItem,"ContId") %>' Width="60px"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 29px; height: 16px">
                                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text="帖子标题：" Width="65px"></asp:Label></td>
                                                        <td align="left" style="width: 263px; height: 16px">
                                                            <asp:Label ID="lblzt" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text='<%# DataBinder.Eval(Container.DataItem,"Subject") %>'></asp:Label></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td bgcolor="#99ccff" style="width: 111px; height: 1px;" valign="top">
                                            <table>
                                                <tr>
                                                    <td style="height: 9px" width="100">
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="hf" Font-Bold="True"
                                                            Font-Size="11pt" Width="120px" ForeColor="White" CausesValidation="False">我要回复</asp:LinkButton></td>
                                                    <td style="width: 1760px; height: 9px">
                                                        <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" ForeColor="White" CausesValidation="False" CommandName="sctz" Font-Size="11pt" Width="100px" Visible="False"></asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="width: 1356px; height: 16px">
                                            <asp:Image ID="imgtx" runat="server" Height="82px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Logo") %>'
                                                Width="90px" /><br />
                                            &nbsp;
                                            <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="LightSkyBlue"
                                                Text="电子邮箱：" Width="104px"></asp:Label>
                                            <asp:Label ID="lbldzyx" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                Text='<%# DataBinder.Eval(Container.DataItem,"Email") %>'></asp:Label></td>
                                        <td style="width: 271px; height: 16px">
                                            &nbsp;<div style="text-align: center">
                                                <table>
                                                    <tr>
                                                        <td align="left" style="width: 100px">
                                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                Text="帖子内容："></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:TextBox ID="TextBox1" runat="server" Height="68px" Text='<%# DataBinder.Eval(Container.DataItem,"Words") %>'
                                                                TextMode="MultiLine" Width="341px"></asp:TextBox></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td style="width: 111px; height: 16px">
                                            <div style="text-align: center">
                                                <table>
                                                    <tr>
                                                        <td style="width: 125px">
                                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                Text="帖子创建日期及时间：" Width="174px"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 125px">
                                                            <asp:Label ID="lblcjsj" runat="server" Font-Size="Small" ForeColor="#FFC080" Text='<%# DataBinder.Eval(Container.DataItem,"CreateTime") %>'></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 125px">
                                                            <table style="width: 98%">
                                                                <tr>
                                                                    <td style="width: 100px">
                                                                        <asp:Label ID="Label7" runat="server" Font-Size="9pt" Text="您是此帖的第" Width="88px"></asp:Label></td>
                                                                    <td style="width: 100px">
                                                                        <asp:Label ID="lblrqzs" runat="server" ForeColor="Red" Text='<%# DataBinder.Eval(Container.DataItem,"HitCount") %>'
                                                                            Font-Size="9pt"></asp:Label></td>
                                                                    <td style="width: 328px">
                                                                        <asp:Label ID="Label9" runat="server" Font-Size="9pt" Height="14px" Text="位浏览者" Width="78px"></asp:Label></td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                </table>
                                
                            </ItemTemplate>
                        </asp:DataList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList2" runat="server" 
                            BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3"
                            CellSpacing="1" OnItemCommand="DataList1_ItemCommand" Width="810px">
                            <ItemTemplate>
                                <table border="1" bordercolor="#99ccff" style="width: 800px; background-color: #ffffff;" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td bgcolor="#99ccff" style="width: 221px; height: 1px;" valign="bottom" align="left">
                                       
                                                <table border="0" style="width: 100%" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="lblhfname" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text="回复姓名：" Width="112px"></asp:Label></td>
                                                        <td style="width: 100px">
                                                            <asp:Label ID="lblhfyhm" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White" Text='<%# DataBinder.Eval(Container.DataItem,"hfname") %>' Width="76px"></asp:Label></td>
                                                    </tr>
                                                </table>
       
                                          </td>
                                        <td bgcolor="#99ccff" style="width: 370px; height: 1px;" valign="bottom" align="left">
                                                <table border="0" style="width: 96%" align="left" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td style="width: 100px; height: 16px;">
                                                            <asp:Label ID="lblhfId" runat="server" ForeColor="White" Text='<%# DataBinder.Eval(Container.DataItem,"hfId") %>'
                                                                Font-Size="9pt" Font-Bold="True" Visible="False"></asp:Label></td>
                                                        <td style="width: 68px; height: 16px;">
                                                            <asp:Label ID="lblhftitle" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text="帖子标题："></asp:Label></td>
                                                        <td style="width: 74px; height: 16px;">
                                                            <asp:Label ID="lblhfzt" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="White"
                                                                Text='<%# DataBinder.Eval(Container.DataItem,"hfSubject") %>'></asp:Label></td>
                                                    </tr>
                                                </table>
                                        </td>
                                        <td style="width: 100px; height: 1px;" bgcolor="#99ccff" align="left">
                                                        <asp:LinkButton ID="lnkbtnhfdelete" runat="server" CommandName="hfsc" Font-Bold="True"
                                                            Font-Size="9pt" Width="120px" ForeColor="White" CausesValidation="False">删除此帖</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 221px; height: 25px" align="center">
                                            <asp:Image ID="imghftx" runat="server" Height="82px" Width="90px" ImageUrl='<%# DataBinder.Eval(Container.DataItem,"Logo") %>' /><br />
                                            &nbsp; &nbsp;
                                            <table>
                                                <tr>
                                                    <td style="width: 100px">
                                                        <asp:Label ID="lblhfEmail" runat="server" Font-Size="Small" ForeColor="LightSkyBlue"
                                                            Text="电子邮箱：" Width="116px"></asp:Label></td>
                                                    <td style="width: 100px">
                                                        <asp:Label ID="lblhfdzyx" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="#FFC080"
                                                            Text='<%# DataBinder.Eval(Container.DataItem,"Email") %>'></asp:Label></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td style="width: 370px; height: 25px">
                                            &nbsp;<div style="text-align: center">
                                                <table>
                                                    <tr>
                                                        <td align="left" style="width: 100px">
                                                            <asp:Label ID="lblhfnr" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                Text="帖子内容："></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 100px">
                                                            <asp:TextBox ID="txthfnr" runat="server" Height="68px" Text='<%# DataBinder.Eval(Container.DataItem,"hfnr") %>'
                                                                TextMode="MultiLine" Width="341px"></asp:TextBox></td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                        <td style="width: 100px; height: 25px" bordercolor="#ffffff">
                                            <div style="text-align: center">
                                                <table>
                                                    <tr>
                                                        <td style="width: 125px">
                                                            <asp:Label ID="lblhftime" runat="server" Font-Bold="True" Font-Size="9pt" ForeColor="LightSkyBlue"
                                                                Text="回复时间：" Width="174px"></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 125px">
                                                            <asp:Label ID="lblhfcjsj" runat="server" Font-Size="9pt" ForeColor="#FFC080" Text='<%# DataBinder.Eval(Container.DataItem,"hftime") %>'></asp:Label></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 125px">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="White" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        </asp:DataList>
                    </td>
                </tr>
            </table>
            
                        



                        <div style="text-align: center">
                            <table border="0" class="auto-style2">
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="Label7" runat="server" Text="当前页码为：" Font-Size="9pt" Font-Bold="True"
                                            ForeColor="SteelBlue" Height="16px" Width="148px"></asp:Label></td>
                                    <td style="width: 100px">
                                        [<asp:Label ID="lblPage" runat="server" Font-Size="Small" Text="1"></asp:Label>]</td>
                                    <td style="width: 100px">
                                        <asp:Label ID="Label6" runat="server" Font-Size="9pt" Text="总页码为：" Font-Bold="True"
                                            ForeColor="SteelBlue" Width="105px"></asp:Label></td>
                                    <td style="width: 100px">
                                        <asp:Label ID="lblBackPage" runat="server" Font-Size="9pt" Text="Label"></asp:Label></td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="lnkbtnOne" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnOne_Click"
                                            Width="112px" CausesValidation="False">第一页</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="lnkbtnUp" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnUp_Click"
                                            Width="66px" CausesValidation="False">上一页</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="lnkbtnNext" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnNext_Click"
                                            Width="66px" CausesValidation="False">下一页</asp:LinkButton></td>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="lnkbtnLast" runat="server" Font-Size="9pt" ForeColor="Red" OnClick="lnkbtnLast_Click"
                                            Width="99px" CausesValidation="False">最后一页</asp:LinkButton></td>
                                    <td style="width: 100px">
                                    </td>
                                </tr>
                            </table>
                        </div>
            <div class="auto-style1">
                <table id="tabht" align="left" bgcolor="#99cccc" border="1" style="border-left-color: #b2d1fc; border-bottom-color: #b2d1fc; border-top-style: solid;
                            border-top-color: #b2d1fc; border-right-style: solid; border-left-style: solid;
                            border-right-color: #b2d1fc; border-bottom-style: solid; background-color: #99ccff;"
                            bordercolordark="#008000" cellpadding="0" cellspacing="0" width="810">
                            <tr>
                                <td align="left" bgcolor="#ffffff" colspan="2" style="height: 20px" bordercolordark="#ffffff">
                                    
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black"
                                        Text="欢迎回帖"></asp:Label></td>
                            </tr>
                            <tr style="font-size: 12pt; color: #000000">
                                <td align="center" style="width: 62px; height: 21px;">
                                    <asp:Label ID="Label5" runat="server" Font-Size="9pt" Text="回帖编号：" Width="92px"></asp:Label></td>
                                <td align="left" style="width: 827px; height: 21px;">
                                    <asp:TextBox ID="txthtbh" runat="server" Width="593px" Enabled="False" ToolTip="不能修改回帖编号"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthtbh"
                                        Display="Dynamic" ErrorMessage="回帖编号不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr style="font-size: 12pt; color: #000000">
                                <td align="center" style="width: 62px; height: 21px">
                                    <asp:Label ID="lblhtname" runat="server" Font-Size="9pt" Text="回帖姓名：" Width="90px"></asp:Label></td>
                                <td style="width: 827px; height: 21px" align="left">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lblhtyhm" runat="server" Text="Label" ForeColor="Black"></asp:Label></td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 62px; height: 42px;">
                                    <asp:Label ID="lblhttitle" runat="server" Font-Size="9pt" Text="回复标题：" Width="95px"></asp:Label></td>
                                <td style="width: 827px; height: 42px;" align="left">
                                    <asp:TextBox ID="txthtbt" runat="server" Width="586px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthtbt"
                                        Display="Dynamic" ErrorMessage="回复标题不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="center" style="width: 62px; height: 76px;">
                                    <asp:Label ID="lblnr" runat="server" Font-Size="9pt" Text="回复内容：" Width="98px"></asp:Label></td>
                                <td align="left" style="width: 827px; height: 76px">
                                    <asp:TextBox ID="txthtnr" runat="server" Height="77px" TextMode="MultiLine" Width="594px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txthtnr"
                                        Display="Dynamic" ErrorMessage="回复内容不能为空" Font-Size="Small"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="height: 23px">
                                    <asp:Button ID="btnOk" runat="server" Text="提交" OnClick="btnOk_Click" />
                                    <asp:Button ID="btnCancel" runat="server" Text="全部重写" OnClick="btnCancel_Click" CausesValidation="False" /></td>
                            </tr>
                        </table>
            </div>

        </div>
    </form>
</body>
</html>
