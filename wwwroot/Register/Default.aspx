<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
</head>
<link href="js/style.css" rel="stylesheet" type="text/css" media="all">
<body style="background: url(images/popup.png) no-repeat scroll 0pt 0pt transparent;">
    <form id="form1" runat="server" method="post" action="Default.aspx" > 
	
	<br/><br/> <br/>
        <table class="style1" width="100%" cellpadding="0" cellspacing=".">
            <tr>
                <td align="right" valign="top" height="10">Tên đăng nhập</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
			         <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Tài khoản!"			 
             ControlToValidate="TxtName" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" height="10">Tên nhân vật</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtCharName" runat="server"></asp:TextBox>
			&nbsp;
            <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Tên nhân vật!"			 
             ControlToValidate="TxtCharName" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" height="10">Mật khẩu</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtPassword" runat="server"
                                 TextMode="Password"></asp:TextBox>
								 
			&nbsp;
			<asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Mật khẩu!"	 		 
             ControlToValidate="TxtPassword" Text="*"
			 >
			 </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" valign="top" height="10">Xác nhận mật khẩu</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtRePassword" runat="server"
                                 TextMode="Password"></asp:TextBox>
				
			 &nbsp;<asp:CompareValidator id="CompareValidator1" 
             runat="server" ErrorMessage="Xác nhận mật khẩu không đúng!"
			 ForeColor="Red"
             ControlToValidate="TxtPassword" 
             ControlToCompare="TxtRePassword" Text="*"></asp:CompareValidator>
                </td>
            </tr>
                        <tr>
                <td align="right" valign="top" height="10">Email:</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
			&nbsp;<asp:RequiredFieldValidator 
             id="RequiredFieldValidator3a" runat="server"
			 ForeColor="Red"
             ErrorMessage="Bạn chưa nhập Email!"			 
             ControlToValidate="TxtEmail" Text="*"
			 > &nbsp;
             </asp:RequiredFieldValidator>
<asp:RegularExpressionValidator id="RegularExpressionValidator1" 
  runat="server" ControlToValidate="TxtEmail" ForeColor="Red"
  ErrorMessage="Địa chỉ Email bạn nhập không hợp lệ!"  Text="*"
  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
</asp:RegularExpressionValidator>
			 
                </td>
            </tr>
			<tr>
                <td align="right" valign="top" height="10">Xác nhận Email</td>
                <td align="left" valign="top" height="10">
                    <asp:TextBox ID="TxtReEmail" runat="server"></asp:TextBox>
				&nbsp;
			 <asp:CompareValidator id="CompareValidator2" 
             runat="server" ErrorMessage="Xác nhận Email không đúng!"
			 ForeColor="Red" Text="*"
             ControlToValidate="TxtEmail" 
             ControlToCompare="TxtReEmail"></asp:CompareValidator>
                </td>
            </tr>
			
            <tr>
                <td align="right" valign="top" height="10">Giới tính nhân vật</td>
                <td align="left" valign="top" height="10">
                <asp:DropDownList ID="DropDownList1" runat="server"
                                  AppendDataBoundItems="true">
                <asp:ListItem Selected="True">Select</asp:ListItem>
                <asp:ListItem>Nam</asp:ListItem>
                <asp:ListItem>Nữ</asp:ListItem>
                </asp:DropDownList>
			&nbsp;				 
			<asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server"
			 ForeColor="Red" Text="*"
             ErrorMessage="Bạn chưa chôn gới tính!"			 
             ControlToValidate="DropDownList1"
			 InitialValue="Select"
			 >
			 </asp:RequiredFieldValidator>
			
                </td>
            </tr>
			<tr>
                <td align="right" valign="top" height="10"> Mã xác nhận
			
</td>
            <td align="left" valign="top" height="10">&nbsp;<img src="Handler.ashx" /></td>

            </tr>
			<tr>
                <td align="right" valign="top" height="10"> Nhập mã xác nhận
			
</td>
                <td align="left" valign="top" height="10">
                <asp:TextBox ID="TextCode" runat="server"></asp:TextBox>
			 &nbsp;
			<asp:RequiredFieldValidator 
             id="RequiredFieldValidator5" runat="server"
			 ForeColor="Red" Text="*"
             ErrorMessage="Bạn chưa nhập Mã bảo mật!"			 
             ControlToValidate="TextCode"
			 >
			 </asp:RequiredFieldValidator>
			 </td></tr>
			<tr>
            <td  colspan="2" align="center" height="10"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            </tr>

        </table>
		
    </div><center>
	<asp:ImageButton id="Button1" 
             onmouseover="this.src='images/dangky-o.gif'" onclick="form1_Submit"
             onmouseout="this.src='images/dangky.gif'" runat="server" 
             ImageUrl="images/dangky.gif"></asp:ImageButton>
</center>

<p>
  <asp:ValidationSummary id="Dl_ValidationSummary" runat="server" 
  ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
</p>

</form> 

</body>
</html>
