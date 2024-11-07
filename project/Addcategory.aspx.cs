using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class addcategory : System.Web.UI.Page
    {
        Cls obj = new Cls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/categorypic/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string s = "insert into Category values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + p + "','" + DropDownList1.SelectedItem.Text + "') ";
            int n = obj.Fn_nonqry(s);
            if (n == 1)
            {
                Label1.Visible = true;
                Label1.Text = "inserted";
            }
            else
            {
                Label1.Text = "Notinserted";
            }
        }
    }
}