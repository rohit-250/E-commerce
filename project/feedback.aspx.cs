using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm16 : System.Web.UI.Page
       
    {
        Cls con = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fb = "insert into feedback values (" + Session["Id"] + ",'" + TextBox1.Text + "','null','1')";
            int i = con.Fn_nonqry(fb);
            if (i == 1)
            {
                Response.Redirect("displayproduct.aspx");
            }
        }
    }
}