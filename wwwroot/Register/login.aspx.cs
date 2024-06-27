using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string CreateMD5Hash(string RawData)
    {
        byte[] hash = System.Security.Cryptography.MD5.Create().ComputeHash(System.Text.Encoding.ASCII.GetBytes(RawData));
        string str = "";
        byte[] numArray = hash;
        int index = 0;
        while (index < numArray.Length)
        {
            byte num = numArray[index];
            str = str + num.ToString("x2");
            checked { ++index; }
        }
        return str;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        int user_id = db.st_Login(txtUsername.Text.Trim(), CreateMD5Hash(txtPassword.Text.Trim()));

        if ((txtUsername.Text.Length < 6) || (txtUsername.Text.Length > 36))
        {
            Label3.Text = "<center><font color='red'>Tên tài khoản không hợp lệ, bạn phải nhập từ 6-36 ký tự.</font></center>";
        }
        else if ((txtPassword.Text.Length < 6) || (txtPassword.Text.Length > 36))
        {
            Label3.Text = "<center><font color='red'>Mật khẩu không hợp lệ, bạn phải nhập từ 6-36 ký tự.</font></center>";
        }
        else if (user_id > 0)
        {
            Session["idlogin"] = user_id;
            Response.Redirect("changepass.aspx");
        }
        else
        {
            //Response.Write("<script>alert('Tài khoản hoặc mật khẩu không đúng!');</script>");
            Label3.Text = "<center><font color='red'>Tài khoản hoặc mật khẩu không đúng!</font></center>";
            txtUsername.Text = "";
        }
    }
}