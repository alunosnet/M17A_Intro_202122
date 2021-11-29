using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M17A_Intro
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                tbnum1.Text = "0";
                tbNum2.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int n1 = int.Parse(tbnum1.Text);
            int n2 = int.Parse(tbNum2.Text);
            lbResultado.Text = (n1 + n2).ToString();
            tbnum1.Text = "0";
            tbNum2.Text = "0";
        }
    }
}