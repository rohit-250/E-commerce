using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace project
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = "select Username from Login";
            List<string> lst = new List<string>();
            SqlDataReader dr = obj.fn_reader(username);
            while (dr.Read())
            {
                lst.Add(dr["Username"].ToString());
            }
            foreach (var r in lst)
            {
                if (r == TextBox6.Text)
                {
                    Label1.Visible = true;
                    Label1.Text = "username already exist";
                }
                else
                {
                    string str = "select max(User_Id) from User_reg ";
                    string regid = obj.Fn_scalar(str);
                    int User_Id = 0;
                    if (regid == "")
                    {
                        User_Id = 1;
                    }
                    else
                    {
                        int newregid = Convert.ToInt32(regid);
                        User_Id = newregid + 1;
                    }
                    string s = "insert into User_reg values(" + User_Id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','Active')";
                    int st = obj.Fn_nonqry(s);
                    string s1 = "insert into Login values(" + User_Id + ",'" + TextBox6.Text + "','" + TextBox7.Text + "','User')";
                    int st1 = obj.Fn_nonqry(s1);

                    if (st == 1 && st1 == 1)
                    {
                        Label1.Visible = true;
                        Label1.Text = "Registered";
                    }
                }
            }
        }
    }
}