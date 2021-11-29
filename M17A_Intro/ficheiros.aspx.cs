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
                if(FileUpload1.PostedFile.ContentType!="image/jpeg"
                    && FileUpload1.PostedFile.ContentType != "image/png")
                {
                    Response.Write("<script>alert('ficheiro não é válido');</script>");
                    return;
                }
            }
        }
    }
}