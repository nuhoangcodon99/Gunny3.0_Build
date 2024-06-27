using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Convert.ToString(Session["idlogin"])))
        {
            Response.Redirect("login.aspx");
        }
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        int iduser = Convert.ToInt32(Session["idlogin"]);
        st_GetUserInfoResult user = db.st_GetUserInfo(iduser).FirstOrDefault();
        if (user != null)
        {
            txtUsername.Text = "<font color='Blue'>" + user.Username + "</font>";
        }
       
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
        if (string.IsNullOrEmpty(Convert.ToString(Session["idlogin"])))
        {
            Response.Redirect("login.aspx");
        }
        if (txtNewPassword.Text.Trim() != txtConfirm.Text.Trim())
        {
            //Response.Write("<script>alert('Xác nhận mật khẩu không đúng');</script>");
            Label5.Text = "<center><font color='red'>Xác nhận mật khẩu không đúng!</font></center>";
            return;
        }
        else if (txtPassword.Text.Trim() == txtNewPassword.Text.Trim())
        {
            //Response.Write("<script>alert('Xác nhận mật khẩu không đúng');</script>");
            Label5.Text = "<center><font color='red'>Mật khẩu mới không được trùng Mật khẩu cũ!</font></center>";
            return;
        }
        int iduser = Convert.ToInt32(Session["idlogin"]);
        SQL_DataClassesDataContext get_username = new SQL_DataClassesDataContext();
        st_GetUserInfoResult user = get_username.st_GetUserInfo(iduser).FirstOrDefault();
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        tankDataClassesDataContext db_tank = new tankDataClassesDataContext();
        //int iduser = Convert.ToInt32(Session["idlogin"]);
        int kq = db.st_Changepassword(iduser, CreateMD5Hash(txtPassword.Text.Trim()), CreateMD5Hash(txtNewPassword.Text.Trim()));
        int kq_tank = db_tank.st_Changepassword(user.Username, CreateMD5Hash(txtPassword.Text.Trim()), CreateMD5Hash(txtNewPassword.Text.Trim()));
        if (kq == -1 || kq_tank == -1)
        {
            //Response.Write("<script>alert('Mật khẩu cũ không đúng');</script>");
            Label5.Text = "<center><font color='red'>Mật khẩu cũ không đúng!</font></center>";
            return;
        }
        else if (kq == 0 || kq_tank == 0)
        {
            //Response.Write("<script>alert('Phát sinh lỗi. Không thể đổi mật khẩu vào lúc này!');</script>");
            Label5.Text = "<center><font color='red'>Phát sinh lỗi. Không thể đổi mật khẩu vào lúc này!</font></center>";
            return;
        }
        else
        {
            //Response.Write("<script>alert('Đổi mật khẩu thành công');</script>");
            Session["idlogin"] = null;
            Label5.Text = "<center><font color='Green'>Đổi mật khẩu thành công!</font></center>";
            return;
        }
    }
}