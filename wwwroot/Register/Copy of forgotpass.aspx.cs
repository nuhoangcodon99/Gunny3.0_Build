using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtNewPassword.Text.Trim() != txtConfirm.Text.Trim())
        {
            //Response.Write("<script>alert('Xác nhận mật khẩu không đúng');</script>");
            Label5.Text = "<center><font color='red'>Xác nhận mật khẩu không đúng!</font></center>";
            return;
        }
       
        
        SQL_DataClassesDataContext get_username = new SQL_DataClassesDataContext();
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        tankDataClassesDataContext db_tank = new tankDataClassesDataContext();
        st_GetUserNameResult user = get_username.st_GetUserName(txtUser.Text.Trim()).FirstOrDefault();
        //int iduser = Convert.ToInt32(Session["idlogin"]);
        string check_mail = user.Email;
        string get_txtmail = txtEmail.Text.Trim();
        if (get_txtmail == check_mail)
        //if (txtUser.Text.Trim() == user.Username)
        {

            int kq = db.st_Forgotpassword(txtUser.Text.Trim(), txtNewPassword.Text.Trim());
            int kq_tank = db_tank.st_Forgotpassword(txtUser.Text.Trim(), txtNewPassword.Text.Trim());
            //Response.Write("<script>alert('Mật khẩu cũ không đúng');</script>");
            //Label5.Text = "<center><font color='red'>Email không tồn tại!</font></center>";
            //Label5.Text = user.Email;
            //return;
            //}
            if (kq == -1 || kq_tank == -1)
            {
                //Response.Write("<script>alert('Mật khẩu cũ không đúng');</script>");
                Label5.Text = "<center><font color='red'>Tài khoản không đúng!</font></center>";
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

        else
        {
            Label5.Text = "<center><font color='red'>Email không tồn tại!</font></center>";
            //Label5.Text = get_txtmail;
        }

    }
}