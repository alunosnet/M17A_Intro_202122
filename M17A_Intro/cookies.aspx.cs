using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //testar se o cookie existe
            HttpCookie cookie = Request.Cookies["M17AB"];
            if(cookie!=null)
                Label2.Text=cookie.Value;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //criar o cookie
            HttpCookie novo = new HttpCookie("M17AB");
            novo.Value = TextBox1.Text;
            novo.Expires = DateTime.Now.AddDays(7);
            //enviar para o browser
            Response.Cookies.Add(novo);
        }
    }
}