using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brower
            string browser = Request.UserAgent;
            div_dados.InnerHtml = browser;

            //ip
            string ip_client = Request.UserHostAddress;
            div_dados.InnerHtml += "<br>" + ip_client;

            //ligação segura
            string ligacao_segura = (Request.IsSecureConnection == true ? "HTTPS" : "HTTP");
            div_dados.InnerHtml += "<br>" + ligacao_segura;

            //autenticado
            string cliente_autenticado = (Request.IsAuthenticated == true ? "Autenticado" : "Não");
            div_dados.InnerHtml += "<br>" + cliente_autenticado;
        }
    }
}