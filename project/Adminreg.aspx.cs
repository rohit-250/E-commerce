using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace project
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "select Username from Login where Logtype='admin'";
            List<string> lst = new List<string>();
            SqlDataReader dr = obj.fn_reader(username);
            while (dr.Read())
            {
                lst.Add(dr["Username"].ToString());
            }
            foreach (var r in lst)
            {
                if (r == TextBox4.Text)
                {
                    Label1.Text = "username already exist";
                }
                else
                {
                    string str = "select max(Admin_Id) from Admin_Reg ";
                    string regid = obj.Fn_scalar(str);
                    int Admin_Id = 0;
                    if (regid == "")
                    {
                        Admin_Id = 1;
                    }
                    else
                    {
                        int newregid = Convert.ToInt32(regid);
                        Admin_Id = newregid + 1;
                    }
                    string s = "insert into Admin_Reg values(" + Admin_Id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
                    int st = obj.Fn_nonqry(s);
                    string s1 = "insert into Login values(" + Admin_Id + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','admin')";
                    int st1 = obj.Fn_nonqry(s1);
                    Label1.Visible = true;
                    if (st == 1 && st1 == 1)
                    {
                        Label1.Text = "Registered";
                    }
                }
            }
        }
    }
}