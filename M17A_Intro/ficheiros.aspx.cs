using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class ficheiros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //testar formato do ficheiro
                if(FileUpload1.PostedFile.ContentType!="image/jpeg"
                    && FileUpload1.PostedFile.ContentType != "image/png")
                {
                    Response.Write("<script>alert('ficheiro não é válido');</script>");
                    return;
                }
                //testar tamanho
                if(FileUpload1.PostedFile.ContentLength>0 &&
                    FileUpload1.PostedFile.ContentLength < 5000000)
                {
                    string ficheiro = Server.MapPath(@"~\Imagens\");
                    ficheiro += FileUpload1.FileName;
                    FileUpload1.SaveAs(ficheiro);
                }
                else
                {
                    Response.Write("<script>alert('O tamanho do ficheiro não é válido');</script>");
                }
            }
        }
    }
}