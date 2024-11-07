using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Login_Id) from Login where Username = '" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'";
            string s = obj.Fn_scalar(str);
            if (s == "1")
            {
                int id1 = 0;
                string str1 = "select Reg_Id from Login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                SqlDataReader i = obj.fn_reader(str1);
                while (i.Read())
                {
                    id1 = Convert.ToInt32(i["Reg_Id"].ToString());
                }
                Session["id"] = id1;
                string str2 = "select Logtype from Login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
                string s2 = obj.Fn_scalar(str2);
                if (s2 == "User")
                {
                    Response.Redirect("Userhome.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "invalid";
                }
            }

        }
    }
}