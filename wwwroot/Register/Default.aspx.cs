using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     //Button1.Attributes.Add("onclick", "return validate()");

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

    protected void form1_Submit(object sender, EventArgs e)
    {
        SQL_DataClassesDataContext db = new SQL_DataClassesDataContext();
        tankDataClassesDataContext db_tank = new tankDataClassesDataContext ();
        
        
        if ((TxtCharName.Text.Length < 4) || (TxtCharName.Text.Length > 32))
        {
           Label1.Text = "<center><font color='red'>Tên nhân vật không hợp lệ, bạn phải nhập từ 6-32 ký tự.</font></center>";
        }
		    else if ((TxtName.Text.Length < 6) || (TxtName.Text.Length > 32))
        {
           Label1.Text = "<center><font color='red'>Tên tài khoản không hợp lệ, bạn phải nhập từ 6-32 ký tự.</font></center>";
        }
		 else if ((TxtPassword.Text.Length < 6) || (TxtPassword.Text.Length > 32))
        {
           Label1.Text = "<center><font color='red'>Mật khẩu không hợp lệ, bạn phải nhập từ 6-32 ký tự.</font></center>";
        }
        else if (Session["Captcha"].ToString() == TextCode.Text)
        {
            string u_Username = TxtName.Text.Trim();
            string u_Password = CreateMD5Hash(TxtPassword.Text.Trim());
            string u_Email = TxtEmail.Text.Trim();
            string u_Charname = TxtCharName.Text.Trim();
            int Money = 99000;
            int Gold = 99000;
            int GiftToken = 99000;
            
            bool gender_char = false;
            if (DropDownList1.SelectedIndex == 1)
            {
                gender_char = true;

            }
            else { gender_char = false; }

            //int gender_char = DropDownList1.SelectedIndex;
            int add_user = db.st_add_Account(u_Username, u_Password, u_Email);
            int add_tank_user = db_tank.SP_Account_Register(u_Username, u_Password, u_Charname, gender_char, Money, Gold, GiftToken);
            if (add_user == 5)
            {

                Label1.Text = "<center><font color='red'>Tài khoản đã được sữ dụng!</font></center>";
                return;
            }
            if (add_tank_user == 5)
           {
              
             Label1.Text = "<center><font color='red'>Nhân vật đã được sữ dụng!</font></center>";
       // Response.Write("<script>alert('" + gender_char + "');</script>");
              return;
          }

            Label1.Text = "<center><font color='Green'>Đăng ký thành công!</font><font color='Blue'>Bạn nhận được: </font><font color='Red'>-" + Money + "Xu. </font><font color='Red'>-" + Gold + "Vàng. </font><font color='Red'>-" + GiftToken + "Lễ kim.</font></center>";
                TxtCharName.Text = "";
                TxtName.Text = "";
                TxtReEmail.Text = "";
                DropDownList1.SelectedIndex = 0;
                TxtEmail.Text = "";
                TextCode.Text = "";	
        }

        else
        {
            
            Label1.Text = "<center><font color='red'>Mã xác nhận hình ảnh không hợp lệ.</font></center>";
            TextCode.Text = "";
        }
    }
	}
	