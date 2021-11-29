using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class pagina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt_Click(object sender, EventArgs e)
        {
            string url = "pagina2.aspx";
            string valor = tbNome.Text;
            url = url + "?valor=" + Server.UrlEncode(valor);
            Response.Redirect(url);
        }
    }
}