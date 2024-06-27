<%@ Page Language="C#" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
            font-size:x-large;
            color:Blue;
            font-family:Arial;
            font-weight:bolder;
        }
        .style2
        {
            width: 166px;
        }
        .style3
        {
            width: 189px;
        }
    </style>
</head>
<body style="background: url(images/popup2.png) no-repeat scroll 0pt 0pt transparent;">
    <form id="form1" runat="server">
    <div style="text-align: center;">
    <br />
        <table >
            <tr>
                <td colspan="2" class="style1">
                    Đổi mật khẩu<br /></td>
            </tr>
            <tr>
                <td style="padding-left: 10px; text-align: right;" class="style2" >
                    <asp:Label ID="Label1" runat="server" Text="Tài khoản"></asp:Label>
                </td>
                <td style="text-align: left;" class="style3">
                    <asp:Label ID="txtUsername" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 10px; text-align: right;" class="style2" >
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
                </td>
                <td style="text-align: left;" class="style3">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Mật khẩu!"			 
             ControlToValidate="txtPassword" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 10px; text-align: right;" class="style2" >
                    <asp:Label ID="Label4" runat="server" Text="Mật khẩu mới"></asp:Label>
                </td>
                <td style="text-align: left;" class="style3">
                    <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Mật khẩu mới!"			 
             ControlToValidate="txtNewPassword" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="padding-left: 10px; text-align: right;" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu mới"></asp:Label>
                </td>
                <td style="text-align: left;" class="style3">
                    <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                			
                </td>
            </tr>
            <tr>
                <td colspan="2" height="14"><asp:ValidationSummary id="Dl_ValidationSummary" runat="server" 
  ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                    <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                               </td>
            </tr><tr>
                <td colspan="2" align="center" >  
                    <asp:ImageButton id="Button1" 
             onmouseover="this.src='images/doipas2.png'" onclick="Button1_Click"
             onmouseout="this.src='images/doipas.png'" runat="server" 
             ImageUrl="images/doipas.png"></asp:ImageButton>
                </td>
            </tr>
        </table>
        <br />
    
    </div>
    </form>
</body>
</html>
