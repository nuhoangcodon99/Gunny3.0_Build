<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style type="text/css">
        .style1
        {
                width: 156px;
            }
        .style2
        {
            font-weight: bold;
            font-size:x-large;
            color:Blue;
            font-family:Arial;
            font-weight:bolder;
        }
            .style3
            {
                width: 205px;
            }
    </style>
</head>
<body style="background: url(images/popup2.png) no-repeat scroll 0pt 0pt transparent;">
    <form id="form1" runat="server">
    <div style="text-align:center">
      <br /><br />
        <table >
            <tr>
                <td align="center" class="style2" colspan="2">
                    Bạn phải đăng nhập trước!<br /><br /></td>
            </tr>
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label>
                </td>
                <td style="text-align: left" class="style3">
                    <asp:TextBox ID="txtUsername" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Tài khoản!"			 
             ControlToValidate="txtUsername" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td style="text-align: left" class="style3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Mật khẩu!"			 
             ControlToValidate="txtPassword" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td  colspan="2" align="center" height="20"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
            <td  colspan="2" align="center" height="10">
            <asp:ImageButton id="Button1" 
             onmouseover="this.src='images/dangnhap-o.png'" onclick="Button1_Click"
             onmouseout="this.src='images/dangnhap.png'" runat="server" 
             ImageUrl="images/dangnhap.png"></asp:ImageButton></td></tr> 
           
        </table>
    <p>
  <asp:ValidationSummary id="Dl_ValidationSummary" runat="server" 
  ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</p>
    </div>
    </form>
</body>
</html>
