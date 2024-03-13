<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

   

</head>
<body id="bg1">
    <form id="form1" runat="server"  >
        <div>
          <table style="width:1500px; height:840px; background-repeat: no-repeat; background-image: url('image/img1.jpg');"  >
                <tr>
                    <td  colspan="3">
                       <h1  style="font-family: 楷体; font-size: 100px; color: #00CCFF; position: fixed; top: 10%; left: 10%;"> 我的论坛</h1>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <div style="position: fixed; right: 10%; bottom: 20%">
                            <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Page.aspx" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="277px" Width="392px">
                                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                                <TextBoxStyle Font-Size="0.8em" />
                                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                            </asp:Login>
                        </div>
                        
                    
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tb_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [tb_Users] ([UserName], [UserPwd], [Ename], [Email], [Logo]) VALUES (@UserName, @UserPwd, @Ename, @Email, @Logo)" SelectCommand="SELECT [UserId], [UserName], [UserPwd], [Ename], [Email], [Logo] FROM [tb_Users]" UpdateCommand="UPDATE [tb_Users] SET [UserName] = @UserName, [UserPwd] = @UserPwd, [Ename] = @Ename, [Email] = @Email, [Logo] = @Logo WHERE [UserId] = @UserId">
                            <DeleteParameters>
                                <asp:Parameter Name="UserId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="UserPwd" Type="String" />
                                <asp:Parameter Name="Ename" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Logo" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="UserName" Type="String" />
                                <asp:Parameter Name="UserPwd" Type="String" />
                                <asp:Parameter Name="Ename" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Logo" Type="String" />
                                <asp:Parameter Name="UserId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        
                    
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr >
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <div style="position: fixed; bottom: 15%; right: 10%">
                            <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                        </div>
                       
                    </td>
                </tr>
            </table>
        </div>





    </form>

</body>
</html>
