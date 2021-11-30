using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class pagina_segura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //verificar se tem sessão iniciada
            if (Session["email"] == null || 
                Session["perfil"].ToString()!="admin")
            {
                Response.Redirect("webform2.aspx");
            }
        }

        protected void btlogout_Click(object sender, EventArgs e)
        {
            //terminar sessão
            Session.Clear();
            Response.Redirect("webform2.aspx");
        }
    }
}