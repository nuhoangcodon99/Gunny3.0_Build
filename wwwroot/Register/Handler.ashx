<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Drawing;
using System.Drawing.Imaging; 

public class Handler : IHttpHandler,IRequiresSessionState 
{
    public void ProcessRequest(HttpContext context)
    {
        using (Bitmap b = new Bitmap(74, 26))
        {
            Font f = new Font("Verdana", 14F);
            Graphics g = Graphics.FromImage(b);
            SolidBrush whiteBrush = new SolidBrush(Color.Blue);
            SolidBrush blackBrush = new SolidBrush(Color.White);
            RectangleF canvas = new RectangleF(0, 0, 74, 26);
            g.FillRectangle(whiteBrush, canvas);            
            context.Session["Captcha"] = GetRandomString();
            g.DrawString(context.Session["Captcha"].ToString(), f, blackBrush, canvas);
            context.Response.ContentType = "image/gif";
            b.Save(context.Response.OutputStream, ImageFormat.Gif);
        }
    }
    
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    
    private string GetRandomString()
    {
        string []arrStr = "A,B,C,D,a,b,c,d,E,F,G,H,e,f,g,h,1,2,3,4,5,6,7,8,9,0".Split(",".ToCharArray());
        string strDraw = string.Empty;
        Random r = new Random();         
         for(int i = 0; i < 5 ; i++)
         {
              strDraw += arrStr[r.Next(0,arrStr.Length-1)];
         }        
        return strDraw;
    }
}
  
