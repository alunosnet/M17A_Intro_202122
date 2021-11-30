using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = tbEmail.Text;
            string password = tbPassword.Text;
            if(email=="joaquim@gmail.com" &&
                password == "12345")
            {
                //inicar sessão
                Session["email"] = email;
                Session["perfil"] = "admin";
                Session["ip"] = Request.UserHostAddress;
                Session["useragent"] = Request.UserAgent;
                Response.Redirect("pagina_segura.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login falhou');</script>");
            }
        }
    }
}