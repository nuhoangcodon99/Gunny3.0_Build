using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpass : System.Web.UI.Page
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
        if (txtNewPassword.Text.Trim() != txtConfirm.Text.Trim())
        {
            
            Label5.Text = "<center><font color='red'>Xác nhận mật khẩu không đúng!</font></center>";
            return;
        }
       
        
        
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        tankDataClassesDataContext db_tank = new tankDataClassesDataContext();
        
        string get_txtmail = txtEmail.Text.Trim();


        int kq = db.st_Forgotpassword(txtEmail.Text.Trim(), txtUser.Text.Trim(), CreateMD5Hash(txtNewPassword.Text.Trim()));
        int kq_tank = db_tank.st_Forgotpassword(txtUser.Text.Trim(), CreateMD5Hash(txtNewPassword.Text.Trim()));
            
            if (kq == -1)
            {
                
                Label5.Text = "<center><font color='red'>Email không chính xác!</font></center>";
                return;
            }
            else if (kq == 0 || kq_tank == 0)
            {
                
                Label5.Text = "<center><font color='red'>Phát sinh lỗi. Không thể đổi mật khẩu vào lúc này!</font></center>";
                return;
            }
            else
            {
                txtUser.Text = "";
                txtEmail.Text = "";
                Label5.Text = "<center><font color='Green'>Đổi mật khẩu thành công!</font></center>";
                return;
            }
        }

       }