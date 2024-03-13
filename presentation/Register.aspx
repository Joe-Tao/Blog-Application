<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1500px; height: 1018px; background-image: url('image/img2.jpg'); background-repeat: no-repeat;">
            <div style="position: fixed; top: 25%; left: 25%">
                <table style="opacity: 0.5; filter: alpha(opacity = 70); width:600px;height:auto; background-image: url('http://localhost:57219/image/img3.jpg'); font-weight: bold;">
                    <tr >
                        <td colspan="4" style="font-size:x-large; text-align: center;">
                            注册页面
                        </td>
                  
                    </tr>
                    <tr>
                        <td >
                            输入用户名
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="Rfvname" runat="server" ControlToValidate="txtname"
                            Display="Dynamic" ErrorMessage="用户姓名不能为空" Font-Size="Small" Width="129px"></asp:RequiredFieldValidator>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            输入密码
                        </td>
                        <td>
                             <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Rfvpwd" runat="server" ControlToValidate="txtpwd"
                            Display="Dynamic" ErrorMessage="用户密码不能为空" Font-Size="Small" Width="131px"></asp:RequiredFieldValidator>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            确认密码
                        </td>
                        <td>
                            <asp:TextBox ID="txtNpwd" runat="server" TextMode="Password" Width="147px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RfwNpwd" runat="server" ControlToValidate="txtNpwd"
                            Display="Dynamic" ErrorMessage="确认密码不能为空" Font-Size="Small" Width="131px"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次输入的密码不相同" ControlToCompare="txtpwd" ControlToValidate="txtNpwd"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            请输入英文名
                        </td>
                        <td>
                             <asp:TextBox ID="txtyname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Rfvyname" runat="server" ControlToValidate="txtyname"
                            Display="Dynamic" ErrorMessage="英文姓名不能为空" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            电子邮箱
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="Rfvemail" runat="server" ErrorMessage="电子邮箱不能为空" ControlToValidate="txtemail" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            头像
                        </td>
                        <td>
                         
                            <asp:DropDownList ID="ddltouxiang" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddltouxiang_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                        <td>
                            <asp:Image ID="imgtouxiang" runat="server"   />

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">返回</asp:LinkButton>
                        </td>
                        <td>
                            <asp:Button ID="btnok" runat="server" OnClick="Button1_Click" Text="注册"  />
                        </td>
                    </tr>

                </table>
            </div>

        </div>
    </form>
</body>
</html>
